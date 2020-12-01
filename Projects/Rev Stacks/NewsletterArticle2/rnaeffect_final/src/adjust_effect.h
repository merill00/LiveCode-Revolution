///////////////////////////////////////////////////////////////////////////////
//
// ADJUST EFFECT HEADER
//
// This header file defines an adjust effect - a simple brightness and contrast
// manipulation filter.
//

#ifndef __ADJUST_EFFECT__
#define __ADJUST_EFFECT__

#ifndef __EFFECT__
#include "effect.h"
#endif

class AdjustEffect: public Effect
{
public:
	AdjustEffect(const char *p_info_variable);

	void Calculate(unsigned int p_in_width, unsigned int p_in_height, unsigned int& p_out_width, unsigned int& p_out_height);
	void Apply(const Image& p_input, Image& p_output);

private:
	int m_brightness;
	int m_contrast;
};

#endif


