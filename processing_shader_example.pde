
PShader glitch;

boolean glitching = false;

void setup() {
  size(640, 360, P2D);
  // Shaders files must be in the "data" folder to load correctly
  glitch = loadShader("badtv2.glsl"); 
  //shader from https://github.com/cacheflowe/haxademic/tree/master/data/haxademic/shaders/filters
  stroke(0, 102, 153);
  rectMode(CENTER);
}

void draw() {
  if(!glitching){
    background(0);
  }
  if(glitching){
    filter(glitch);
  }
  rect(mouseX-75, mouseY, 150, 150); 
  ellipse(mouseX+75, mouseY, 150, 150);
}

void mouseClicked(){
  glitching = !glitching;
}
