///////////////////////////////////////////////////////////////////////////////
//
// EFFECT SOURCE
//
// This source file contains the implementation of Effect static methods
//

#include <string>

#include <revolution/external.h>

#include "variable.h"
#include "effect.h"

// BEGIN USER EFFECT INCLUDES
// END USER EFFECT INCLUDES

///////////////////////////////////////////////////////////////////////////////
//
// EFFECT REGISTRATION
//
// Here we have the static data structures that are used to register effects
// that have been implemented.
//
// An effect is registered by adding an entrty to the 's_effects' table.
//
// An entry consists of a name and a construction function. Assuming the effect
// conforms to the standard 'interface' of having a single constructor taking
// the name of a Revolution variable, then a simple C++-template can be used
// to automatically generate the construction function.
//

// An 'EffectConstructor' should take the name of a Revolution variable and
// return an object derived from 'Effect'.
//
typedef Effect *(*EffectConstructor)(const char *p_info_variable);

// This simple function template constructs an 'EffectConstructor' for Effects
// that have a suitable constructor.
//
template<class T> Effect *EffectCreate(const char *p_info_variable)
{
	return new T(p_info_variable);
}

// Each entry in the 's_effects' table is an instance of this structure
//
struct EffectEntry
{
	const char *name;
	EffectConstructor constructor;
};

// The effects table itself. As mentioned before, if an effect has a constructor
// of the form MyEffect(const char *p_variable), then you can use the standard
// effect wrapper template to build a constructor implicitly.
//   i.e. an entry looks like { "myeffect", EffectCreate<MyEffect> }
//
static EffectEntry s_effects[] =
{
	// BEGIN USER EFFECTS
	// END USER EFFECTS
	{ NULL, NULL }
};

///////////////////////////////////////////////////////////////////////////////
//
// EFFECT STATIC MEMBER FUNCTIONS
//
// Here we define the static member functions present in the 'Effect' virtual
// base class. These are utility functions used by the Revolution external
// commands and functions to create and list Effects.
//

// Effect::Enumerate returns a string containing the list of all the known
// effects - i.e. the ones listed in the 's_effects' table.
//
std::string Effect::Enumerate(void)
{
	// The variable 't_result' will hold the list of effect names
	//
	std::string t_result;

	// Loop through each entry until we hit the last (NULL) entry
	//
	for(unsigned int t_entry = 0; s_effects[t_entry] . name != NULL; ++t_entry)
	{
		// If we are not the first entry, then we must first add a delimiter
		//
		if (t_entry != 0)
			t_result += '\n';

		// Append the name of the effect to our result string
		//
		t_result += s_effects[t_entry] . name;
	}

	return t_result;
}

// Effect::Create returns an instance of an object derived from 'Effect'. It
// expects 'p_info_variable' to be the name of a Revolution variable containing
// an array. At the minimum, this array must contain an element with key 'name'
// containing the name of the effect to use.
//
Effect *Effect::Create(const char *p_info_variable)
{
	// Wrap the Revolution variable in our Variable abstraction.
	//
	Variable t_variable(p_info_variable);

	// Fetch the name of the effect we want.
	//
	std::string t_name;
	t_name = t_variable . GetStringElement("name");

	// Loop through each entry, checking to see if we have found the wanted
	// effect - notice here we use strcasecmp to ensure case-insensitive
	// string comparison.
	// If we find a match, attempt to construct the effect and return the
	// result.
	//
	for(unsigned int t_entry = 0; s_effects[t_entry] . name != NULL; ++t_entry)
		if (strcasecmp(s_effects[t_entry] . name, t_name . c_str()) == 0)
			return s_effects[t_entry] . constructor(p_info_variable);

	// If we've fallen through to here it means we failed to find a matching
	// effect, so throw an error.
	//
	throw UnknownEffectError(t_name . c_str());

	return NULL;
}

///////////////////////////////////////////////////////////////////////////////
//
// EFFECT EXCEPTIONS IMPLEMENTATION
//

UnknownEffectError::UnknownEffectError(const char *p_effect_name)
{
	Format("'%s' is not a known effect", p_effect_name);
}
