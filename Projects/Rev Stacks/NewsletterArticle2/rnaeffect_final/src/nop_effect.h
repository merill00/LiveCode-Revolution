///////////////////////////////////////////////////////////////////////////////
//
// NO-OP EFFECT HEADER
//
// This header file defines a 'no-op' Effect.
//

#ifndef __NOP_EFFECT__
#define __NOP_EFFECT__

#ifndef __EFFECT__
#include "effect.h"
#endif

class NopEffect : public Effect
{
public:
	NopEffect(const char *p_info_variable);

	void Calculate(unsigned int p_in_width, unsigned int p_in_height, unsigned int& p_out_width, unsigned int& p_out_height);
	void Apply(const Image& p_input, Image& p_output);
};

#endif
