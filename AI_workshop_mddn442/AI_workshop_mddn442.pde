AI ai_manager;

void setup()
{
   background(255,255,255);
   size(1024,768,JAVA2D);
  
  ai_manager = new AI("bread.png", 500, 500); 
}

void draw(){
  background(255,255,255);
  
  //the "200, 200" here should be x, y of the aardvark.
  ai_manager.animate(200, 200);
}
