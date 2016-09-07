Die one;
int sumRoll = 0;
void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	//your code here
	background(0);
	for(int x = 100; x < 399; x += 50)
	{
		for(int y = 50; y < 349; y += 50)
		{
			one = new Die(x, y);
			one.show();
		}
	}
	text(sumRoll, 100, 350);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int diceRoll;
	int dieX;
	int dieY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		dieX = x;
		dieY = y;
		roll();
	}
	void roll()
	{
		//your code here
		if((int)(Math.random() * 6 + 1) == 1)
		{
			diceRoll = 1;
		}
		else if((int)(Math.random() * 6 + 1) == 2)
		{
			diceRoll = 2;
		}
		else if((int)(Math.random() * 6 + 1) == 3)
		{
			diceRoll = 3;
		}
		else if((int)(Math.random() * 6 + 1) == 4)
		{
			diceRoll = 4;
		}
		else if((int)(Math.random() * 6 + 1) == 5)
		{
			diceRoll = 5;
		}
		else if((int)(Math.random() * 6 + 1) == 6)
		{
			diceRoll = 6;
		}
		sumRoll = sumRoll + diceRoll;
	}
	void show()
	{
		//your code here
		stroke(255);
		fill(255, 0, 0);
		rect(dieX, dieY, 30, 30);
		fill(255);
		text(diceRoll, dieX + 12.5, dieY + 20);
	}
}
