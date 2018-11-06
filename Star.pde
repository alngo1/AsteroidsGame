class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star()
  {
    myX = (int)(Math.random()*500);
  	myY = (int)(Math.random()*500);
    myColor = (#FFFFFF);
  }
  public void show()
  {
    noStroke();
    fill(myColor);
  	ellipse(myX, myY, 5, 5);
  }
  public void move()
  {
  	myX = myX + 10;
  	myY = myY + 10;
  }
}
