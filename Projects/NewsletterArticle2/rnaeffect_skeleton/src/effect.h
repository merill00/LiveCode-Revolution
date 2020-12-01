///////////////////////////////////////////////////////////////////////////////
//
// EFFECT HEADER
//
// This header file defines an abstraction for an 'Effect' - allowing easy
// implementation by overriding two virtual methods.
//

#ifndef __EFFECT__
#define __EFFECT__

#ifndef _STRING_
#include <string>
#endif

#ifndef __UTILITY__
#include "utility.h"
#endif

///////////////////////////////////////////////////////////////////////////////
//
// IMAGE STRUCTURE
//
// The 'Image' structure is a collection of raw-image related data.
// The size of the image is given in pixels in 'width' and 'height'.
//
// If non-NULL, color is a pointer to width * height * 4 bytes containing the
// color data for each pixel. Each group of four bytes is of the form:
//   pad, red, green, blue
// This matches the internal Revolution 'imageData' format.
//
// If non-NULL, alpha is a pointer to width * height bytes containing
// the alpha mask for each pixel.
// This matches the internal Revolution 'alphaData' format.
//

struct Image
{
	unsigned int width;
	unsigned int height;
	unsigned char *color;
	unsigned char *alpha;
};

///////////////////////////////////////////////////////////////////////////////
//
// EFFECT ABSTRACT CLASS
//
// The 'Effect' class is a virtual base class with two required virtual
// methods.
//
// Effect::Calculate takes an input pixel width and height and must return
// the output pixel width and height required to apply the filter.
//
// Effect::Apply should take the image data in the input Image structure
// and apply the effect to it, putting the result in the output Image structure
// Notionally, if either the color or alpha members of the input Image structure
// are NULL, it means the effect should not act on nor produce those
// channels.
//
// The static methods provide support for listing all currently known
// effects, and creating a given effect based on an effect parameter array.
//

class Effect
{
public:
	virtual ~Effect(void);
	virtual void Calculate(unsigned int p_in_width, unsigned int p_in_height, unsigned int& p_out_width, unsigned int& p_out_height) = 0;
	virtual void Apply(const Image& p_input, Image& p_output) = 0;

	static std::string Enumerate(void);
	static Effect *Create(const char *p_info_variable);
};

inline Effect::~Effect(void)
{
}

///////////////////////////////////////////////////////////////////////////////
//
// EXCEPTION CLASSES
//

// The 'UnknownEffectError' class is an exception class thrown when an
// attempt is made to create an effect with an unknown name.
//

class UnknownEffectError: public ErrorException
{
public:
	UnknownEffectError(const char *p_effect_name);
};

#endif
