function sound_play(_snd) {
	var _inst = audio_play_sound(_snd, 10, false);
	audio_sound_gain(_inst, Control.sfx_vol, 0);
	return _inst;
}

function sfx_play(_snd, _priority, _loop) {
	var _inst = audio_play_sound(_snd, _priority, _loop);
	audio_sound_gain(_inst, Control.sfx_vol, 0);
	return _inst;
}

function sfx_play_at(_snd, _x, _y, _z, _falloff_ref, _falloff_max, _falloff_factor, _loop, _priority) {
	var _inst = audio_play_sound_at(_snd, _x, _y, _z, _falloff_ref, _falloff_max, _falloff_factor, _loop, _priority);
	audio_sound_gain(_inst, Control.sfx_vol, 0);
	return _inst;
}

function sfx_play_on(_emitter, _snd, _loop, _priority) {
	var _inst = audio_play_sound_on(_emitter, _snd, _loop, _priority);
	audio_sound_gain(_inst, Control.sfx_vol, 0);
	return _inst;
}
