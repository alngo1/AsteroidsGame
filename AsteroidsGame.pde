ArrayList <Bullet> bullet = new ArrayList <Bullet>();
int numBullets = 0;
Star[] stars = new Star[100];
Spaceship a;
int numAsteroid = 20;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
//variables for starfield thing hyperspace
boolean hyper = false;
int h = 500;
public void setup() 
{
// makes new space ship. a^
	a = new Spaceship();
	//creates stars. 100^
	for(int i = 0; i < stars.length; i++)
	{
		stars[i] = new Star();
	}
//creates asteroids. 20^
	for(int i = 0; i < numAsteroid; i++)
	{
		rocks.add(new Asteroid());
	}
/*	for(int i = 0; i < numBullets; i++){
		bullet.add(new Bullet(a));
	}
*/
//makes initial screen color and size and noStroke
	background(0);
	noStroke();
	size(500, 500);
}

public void draw() 
{
//background for animation stuff
	background(0);
//shows ship
	a.show();

//shows all stars
	for(int i = 0; i < stars.length; i++)
	{
		stars[i].show();
	}
//shows and moves bullet
	for(int i = 0; i < numBullets; i++)
	{
		bullet.get(i).show();
	}
	for(int i = 0; i < numBullets; i++)
	{
		bullet.get(i).move();
	}
//moves the spaceship
	a.move();
//shows asteroids and moves them, unless the ship is close, about 20 pixels, then it removes asteroids.
	for(int i = 0; i < numAsteroid; i++)
	{
		float distance = dist(rocks.get(i).getX(), rocks.get(i).getY(), a.getX(), a.getY());
		if(distance < 20){
			rocks.remove(i);
			numAsteroid--;
		}
		else{
			rocks.get(i).move();
			rocks.get(i).show();
		}
	}
//starfield kind of, might use  while(hyper == true && h > 0)  idk
	if(hyper == true && h > 0){
			for(int i = 0; i < stars.length; i++)
			{
    			stars[i].move();
    			stars[i].show();
    			/*
    			fill(102, 102, 255, 30);
				rect(0, 0, 500, 500);
				*/
				h--;
			}
	}else{
		hyper = false;
		h = 600;
	}
}

//user interaction with keyboard
public void keyPressed()
{
//hyperspace
	if(key == 'h')
	{
		a.setDirectionX(0);
		a.setDirectionY(0);
		a.setX((int)(Math.random()*501));
		a.setY((int)(Math.random()*501));
		hyper = true;
	}
	if(key == ' ')
	{
		bullet.add(new Bullet(a));
		numBullets++;
	}
//forward acceleration
	if(key == 'w')
	{
		a.accelerate(1);
	}
//left turn
	if(key == 'a')
	{
		a.turn(-10);
	}
//reverse acceleration
	if(key == 's')
	{
		a.accelerate(-1);
	}
//right turn
	if(key == 'd')
	{
		a.turn(10);
	}
}