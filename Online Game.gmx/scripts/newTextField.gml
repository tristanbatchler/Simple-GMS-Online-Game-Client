///newTextField(int x, int y, String prompt, int maxLength) returns instance of parTextField

var xx = argument0;
var yy = argument1;
var thisPrompt = argument2;
var thisMaxLength = argument3;

tf = instance_create(xx, yy, parTextField);
tf.prompt = thisPrompt;
tf.maxLength = thisMaxLength; 

return tf;
