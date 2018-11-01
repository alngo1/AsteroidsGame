Spaceship a;
public void setup() 
{
	size(500, 500);
	a = new Spaceship();
}
public void draw() 
{
	a.show();
}

public void keyPressed()
{
	if (key == 'a')
	{
		a.setDirectionX(10);
	}
}

