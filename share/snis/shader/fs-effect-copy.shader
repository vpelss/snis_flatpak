/*
	Copyright © 2014 Jeremy Van Grinsven

	This file is part of Spacenerds In Space.

	Spacenerds in Space is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Spacenerds in Space is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Spacenerds in Space; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/


#ifdef INCLUDE_VS
	varying vec2 v_TexCoord;
	uniform mat4 u_MVPMatrix;

	attribute vec4 a_Position;
	attribute vec2 a_TexCoord;

	void main(void)
	{
		v_TexCoord = a_TexCoord;
		gl_Position = u_MVPMatrix * a_Position;
	}
#endif

#ifdef INCLUDE_FS
	varying vec2 v_TexCoord;
	uniform sampler2D texture0Sampler;
	uniform vec4 u_TintColor;

	void main() {
		vec4 tex_color = texture2D(texture0Sampler, v_TexCoord);

		gl_FragColor = u_TintColor * tex_color;
	}
#endif

