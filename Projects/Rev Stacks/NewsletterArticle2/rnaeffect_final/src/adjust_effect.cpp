///////////////////////////////////////////////////////////////////////////////
//
// ADJUST EFFECT SOURCE
//
// This source file contains the implementation of the 'adjust' effect
//

#include <cstring>

#include "variable.h"

#include "effect.h"
#include "adjust_effect.h"

// The adjust effect takes two parameters:
//   contrast : number in the range 0 to 255
//   brightness : number in the range -127 to 127
//
AdjustEffect::AdjustEffect(const char *p_info_variable)
{
	Variable t_info(p_info_variable);
	m_contrast = t_info . GetIntegerElement("contrast");
	m_brightness = t_info . GetIntegerElement("brightness");
}

// The adjust effect does not change the size of the image
//
void AdjustEffect::Calculate(unsigned int p_in_width, unsigned int p_in_height, unsigned int& p_out_width, unsigned int& p_out_height)
{
	p_out_width = p_in_width;
	p_out_height = p_in_height;
}

// The adjust effect performs the following calculation on each channel of
// the image (except alpha):
//   c' = min(0, max(255, (c - 128) * contrast + brightness))
//
void AdjustEffect::Apply(const Image& p_input, Image& p_output)
{
	// Process the color data
	//
	if (p_input . color != NULL)
	{
		const unsigned char *t_in_ptr;
		t_in_ptr = p_input . color;

		unsigned char *t_out_ptr;
		t_out_ptr = p_output . color;

		// Since this effect is not sensitive to row or column, we just iterate
		// through each pixel without regard for its x or y location.
		//
		for(unsigned int p = 0; p < p_input . width * p_input . height; ++p)
		{
			// Skip the pad byte in both input and output
			t_in_ptr++;
			t_out_ptr++;

			// Similarly, since this effect is not sensitive to channel, we just
			// iterate through 3 channels for each pixel - red, green and blue.
			//
			for(unsigned int c = 0; c < 3; ++c)
			{
				int t_in_value;
				t_in_value = *t_in_ptr++;

				int t_out_value;
				t_out_value = ((t_in_value - 128) * m_contrast) / 128 + 128 + m_brightness;
				if (t_out_value < 0)
					t_out_value = 0;
				else if (t_out_value > 255)
					t_out_value = 255;

				*t_out_ptr++ = t_out_value;
			}
		}
	}

	// We have no effect on the alpha data, so we just copy it straight
	// through.
	//
	if (p_input . alpha != NULL)
		memcpy(p_output . alpha, p_input . alpha, p_input . width * p_input . height);
}
