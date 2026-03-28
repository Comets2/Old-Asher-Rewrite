// Safety net: free audio emitter if not already freed
if(useaudio==1){
if(variable_instance_exists(id,"spellsnd")){
if(spellsnd!=-1){
audio_emitter_free(spellsnd)
spellsnd=-1
}}}
