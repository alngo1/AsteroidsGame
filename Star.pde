class Star //note that this class does NOT extend Floater
{
  private double myX, myY, myAngle, mySpeed;
  private int myColor;
  public Star()
  {
    myX = (int)(Math.random()*500);
  	myY = (int)(Math.random()*500);
    myColor = (#FFFFFF);
    myAngle = Math.random()*(2*Math.PI);
    mySpeed = Math.random()*5;
  }
  public void show()
  {
    noStroke();
    fill(myColor);
  	ellipse((float)myX, (float)myY, 5, 5);
  }
  //starfield move
  public void move()
  {
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
}
