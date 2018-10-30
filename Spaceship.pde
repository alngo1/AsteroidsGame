class Spaceship extends Floater  
{   
	/*
	  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection;
  */
    public void setX(int x){myCenterX = x;}
    public void getX(){return myCenterX;}
    public void setY(int y){myCenterY = y;}
    public void getY(){return myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}   
	public double getDirectionX(){return myDirectionX}   
	public void setDirectionY(double y){myDirectionY = y;}   
	public double getDirectionY(){return myDirectionY;}   
	public void setPointDirection(int degrees){myPointDirection = degrees;}   
	public double getPointDirection(){return myPointDirection;}
	public Spaceship(){
		corners = 3;
		xCorners
		yCorners
		myColor = ((int)Math.random()*257, (int)Math.random()*257, (int)Math.random()*257);
		myCenterX
		myCenterY
		myDirectionX
		myDirectionY
		myPointDirection
	}
}
