///////////////////////////////////////////////////////////////////////////////
//
// NO-OP EFFECT SOURCE
//
// This source file contains the implementation of the 'no-op' effect
//

#include <cstring>

#include "effect.h"
#include "nop_effect.h"

// Constructor:
//   As the effect has no effect, it has no parameters.
//
NopEffect::NopEffect(const char *p_info_variable)
{
}

// Calculate:
//   The effect has no effect on the size of the image, so we just pass the
//   input straight to the output.
//
void NopEffect::Calculate(unsigned int p_in_width, unsigned int p_in_height, unsigned int& p_out_width, unsigned int& p_out_height)
{
	p_out_width = p_in_width;
	p_out_height = p_in_height;
}

// Apply:
//   The effect has no effect, so we just copy input to output.
//
void NopEffect::Apply(const Image& p_input, Image& p_output)
{
	if (p_input . color != NULL)
		memcpy(p_output . color, p_input . color, p_input . width * p_input . height * 4);
	if (p_input . alpha != NULL)
		memcpy(p_output . alpha, p_input . alpha, p_input . width * p_input . height);
}
