Spaceship a;
Asteroid[] rocks = new Asteroid[20];
Star[] stars = new Star[100];
public void setup() 
{
	a = new Spaceship();
	for(int i = 0; i < stars.length; i++)
	{
		stars[i] = new Star();
	}
	for(int i = 0; i < rocks.length; i++)
	{
		rocks[i] = new Asteroid();
	}
	background(0);
	size(500, 500);
}

public void draw() 
{
	background(0);
	//makes space
	a.show();

	//makes starsss
	for(int i = 0; i < stars.length; i++)
	{
		stars[i].show();
	}
	
	a.move();
	for(int i = 0; i < rocks.length; i++)
	{
		rocks[i].move();
		rocks[i].show();
	}
}

public void keyPressed()
{
	if(key == 'h')
	{
		a.setDirectionX(0);
		a.setDirectionY(0);
		a.setX((int)(Math.random()*501));
		a.setY((int)(Math.random()*501));
	}
	if(key == 'w')
	{
		a.accelerate(1);
	}
	if(key == 'a')
	{
		a.turn(-10);
	}
	if(key == 's')
	{
		a.accelerate(-1);
	}
	if(key == 'd')
	{
		a.turn(10);
	}
}