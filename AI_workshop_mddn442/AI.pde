class AI{
  //Moves bread around looking for the Aardvark(s)
  int xPos;
  int yPos;
  PImage img;
  int xDir;
  int yDir;
  
  AI(String imgName, int x, int y){
    this.img = loadImage(imgName);
    this.xPos = x;
    this.yPos = y;
    this.yDir = 10;
    this.xDir = 10;
    image(this.img,x,y);
  }
 
  void animate(int aardvark_xPos, int aardvark_yPos){
    //Make the bread go towards the aardvark
    if(aardvark_xPos < this.xPos + this.xDir){
        this.xDir -= 1;
    }
    else if(aardvark_xPos > this.xPos + this.xDir){
        this.xDir += 1;
    }
    
    if(aardvark_yPos < this.yPos + this.yDir){
        this.yDir -= 1;
    }
    else if(aardvark_xPos > this.yPos + this.yDir){
        this.yDir += 1;
    }
    
    int xWalk = this.xPos + this.xDir;
    int yWalk = this.yPos + this.yDir;
    image(this.img,xWalk,yWalk);
    
  }
}
