function settings_apply_window() {
	if (window_mode == 0) {
		// Fullscreen
		window_set_fullscreen(true)
	} else if (window_mode == 1) {
		// Borderless - fullscreen-sized window
		window_set_fullscreen(false)
		var _dw = display_get_width()
		var _dh = display_get_height()
		window_set_size(_dw, _dh)
		window_set_position(0, 0)
	} else {
		// Windowed
		window_set_fullscreen(false)
		var _w = 255 * window_scale
		var _h = 143 * window_scale
		window_set_size(_w, _h)
		window_center()
	}
}

function settings_draw_scr() {
	var _vx = __view_get(e__VW.XView, 0)
	var _vy = __view_get(e__VW.YView, 0)
	var _tc = c_white

	// Main panel
	ui_panel(_vx+10, _vy+4, _vx+245, _vy+138)

	// Title bar
	ui_panel(_vx+12, _vy+6, _vx+243, _vy+18)
	var _tw = string_width("OPTIONS") * 0.5
	draw_text_ext_transformed_colour(_vx+127-(_tw/2), _vy+8, "OPTIONS", 1, 1000, 0.5, 0.5, 0, _tc, _tc, _tc, _tc, 1)

	// Tab buttons
	var _tab_w = 56
	var _tab_gap = 2
	for (var _t = 0; _t < 4; _t++) {
		var _tx1 = _vx + 12 + _t * (_tab_w + _tab_gap)
		var _tx2 = _tx1 + _tab_w
		ui_button(_tx1, _vy+20, _tx2, _vy+32, settings_tab == _t)

		var _tname = ""
		if (_t == 0) _tname = "Sound"
		if (_t == 1) _tname = "Controls"
		if (_t == 2) _tname = "Graphics"
		if (_t == 3) _tname = "Colors"

		var _ntw = string_width(_tname) * 0.5
		draw_text_ext_transformed_colour(_tx1 + (_tab_w/2) - (_ntw/2), _vy+23, _tname, 1, 1000, 0.5, 0.5, 0, _tc, _tc, _tc, _tc, 1)
	}

	// Content panel
	ui_panel(_vx+12, _vy+34, _vx+243, _vy+136)

	// Sound tab
	if (settings_tab == 0) {
		for (var _r = 0; _r < 3; _r++) {
			var _ry1 = _vy + 39 + _r * 32
			var _ry2 = _ry1 + 28

			ui_button(_vx+14, _ry1, _vx+241, _ry2, settings_row == _r)

			var _label = ""
			var _vol = 0
			if (_r == 0) { _label = "Master Volume"; _vol = master_vol }
			if (_r == 1) { _label = "Music Volume"; _vol = music_vol }
			if (_r == 2) { _label = "SFX Volume"; _vol = sfx_vol }

			draw_text_ext_transformed_colour(_vx+18, _ry1+10, _label, 1, 1000, 0.5, 0.5, 0, _tc, _tc, _tc, _tc, 1)

			// Slider border
			var _sx1 = _vx+144
			var _sx2 = _vx+209
			var _sy1 = _ry1+9
			var _sy2 = _ry2-9
			draw_rectangle_color(_sx1, _sy1, _sx2, _sy2, ui_border, ui_border, ui_border, ui_border, false)
			// Slider fill
			var _fill_w = (_sx2 - _sx1 - 2) * _vol
			if (_fill_w > 0) {
				draw_rectangle_color(_sx1+1, _sy1+1, _sx1+1+_fill_w, _sy2-1, colorgoldlight, colorgoldlight, colorgoldlight, colorgoldlight, false)
			}

			// Percentage
			draw_text_ext_transformed_colour(_vx+214, _ry1+10, string(round(_vol*100))+"%", 1, 1000, 0.5, 0.5, 0, _tc, _tc, _tc, _tc, 1)
		}
	}

	// Graphics tab
	if (settings_tab == 2) {
		// Row 0: Window Mode
		var _ry1 = _vy + 39
		var _ry2 = _ry1 + 28
		ui_button(_vx+14, _ry1, _vx+241, _ry2, settings_row == 0)
		draw_text_ext_transformed_colour(_vx+18, _ry1+10, "Window Mode", 1, 1000, 0.5, 0.5, 0, _tc, _tc, _tc, _tc, 1)

		var _mode_text = ""
		if (window_mode == 0) _mode_text = "Fullscreen"
		if (window_mode == 1) _mode_text = "Borderless"
		if (window_mode == 2) _mode_text = "Windowed"
		var _mtw = string_width(_mode_text) * 0.5
		draw_text_ext_transformed_colour(_vx+190-(_mtw/2), _ry1+10, "< "+_mode_text+" >", 1, 1000, 0.5, 0.5, 0, _tc, _tc, _tc, _tc, 1)

		// Row 1: Window Scale (only in Windowed mode)
		if (window_mode == 2) {
			_ry1 = _vy + 71
			_ry2 = _ry1 + 28
			ui_button(_vx+14, _ry1, _vx+241, _ry2, settings_row == 1)
			draw_text_ext_transformed_colour(_vx+18, _ry1+10, "Window Scale", 1, 1000, 0.5, 0.5, 0, _tc, _tc, _tc, _tc, 1)

			var _scale_text = string(window_scale) + "x  " + string(255*window_scale) + "x" + string(143*window_scale)
			var _stw = string_width(_scale_text) * 0.5
			draw_text_ext_transformed_colour(_vx+190-(_stw/2), _ry1+10, "< "+_scale_text+" >", 1, 1000, 0.5, 0.5, 0, _tc, _tc, _tc, _tc, 1)
		}
	}
}
