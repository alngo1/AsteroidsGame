class Asteroid extends Floater
{
	private int mySpinSpeed;
	public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}   
	public double getDirectionX(){return myDirectionX;}   
	public void setDirectionY(double y){myDirectionY = y;}   
	public double getDirectionY(){return myDirectionY;}   
	public void setPointDirection(int degrees){myPointDirection = degrees;}   
	public double getPointDirection(){return myPointDirection;}
	public Asteroid()
	{
		corners = 3;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners [0] = -8;
		yCorners [0] = -8;
		xCorners [1] = 16;
		yCorners [1] = 0;
		xCorners [2] = -8;
		yCorners [2] = 8;
		myColor = color(244, 204, 224);
		myCenterX = (int)(Math.random()*501);
		myCenterY = (int)(Math.random()*501);
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
		mySpinSpeed = (int)(Math.random()*50)-25;
	}
	public void move()
	{
		turn(mySpinSpeed);
	}
}