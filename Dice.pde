Die one = newDie(10, 10);
void setup()
{
	size(500, 500);
	background(0);
	noLoop();
}
void draw()
{
	//your code here
	for(int x; x < 390; x + 40)
	{
		
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
		int dieX = x;
		int dieY = y;
		Die roll();
	}
	void roll()
	{
		//your code here
		if((int)(Math.random * 6 + 1) == 1)
		{
			diceRoll = 1;
		}
		else if((int)(Math.random * 6 + 1) == 2)
		{
			diceRoll = 2;
		}
		else if((int)(Math.random * 6 + 1) == 3)
		{
			diceRoll = 3;
		}
		else if((int)(Math.random * 6 + 1) == 4)
		{
			diceRoll = 4;
		}
		else if((int)(Math.random * 6 + 1) == 5)
		{
			diceRoll = 5;
		}
		else if((int)(Math.random * 6 + 1) == 6)
		{
			diceRoll = 6;
		}
	}
	void show()
	{
		//your code here
		stroke(255);
		fill(255, 0, 0);
		rect(dieX, dieY, 30, 30);
		fill(255);
		text(diceRoll, dieX - 10, dieY - 10);
	}
}
