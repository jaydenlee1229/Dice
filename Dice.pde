Die one;
int sumRoll = 0;
void setup()
{
	size(500, 500);
	frameRate(1);
	noLoop();
}
void draw()
{
	//your code here
	background(0);
	for(int x = 25; x < 499; x += 50)
	{
		for(int y = 25; y < 399; y += 50)
		{
			one = new Die(x, y);
			one.show();
		}
	}
	noStroke();
	fill(50, 150, 200);
	rect(0, 400, 500, 100);
	fill(0);
	textSize(30);
	textAlign(CENTER);
	text("STOP", 250, 460);
}
void mousePressed()
{
	if(mouseY <= 400)
	{
		redraw();
		loop();
	}
	else
	{
		noStroke();
		fill(50, 150, 200);
		rect(0, 400, 500, 100);
		fill(0);
		textSize(30);
		textAlign(CENTER);
		text("SUM OF ROLL: " + sumRoll, 240, 460);
		sumRoll = 0;
		noLoop();
	}		
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
		int diceValue = (int)(Math.random() * 6 + 1);
		if(diceValue == 1)
		{
			diceRoll = 1;
		}
		if(diceValue == 2)
		{
			diceRoll = 2;
		}
		if(diceValue == 3)
		{
			diceRoll = 3;
		}
		if(diceValue == 4)
		{
			diceRoll = 4;
		}
		if(diceValue == 5)
		{
			diceRoll = 5;
		}
		if(diceValue == 6)
		{
			diceRoll = 6;
		}
		
	}
	void show()
	{
		//your code here
		stroke(255);
		fill(dieX/2, dieY/2, diceRoll * 40);
		rect(dieX - 25, dieY - 25, 50, 50, 5);
		fill(255);
		if(diceRoll == 1)
		{
			ellipse(dieX, dieY, 5, 5);
		}
		if(diceRoll == 2)
		{
			ellipse(dieX - 10, dieY - 10, 5, 5);
			ellipse(dieX + 10, dieY + 10, 5, 5);
		}
		if(diceRoll == 3)
		{
			ellipse(dieX, dieY, 5, 5);
			ellipse(dieX - 10, dieY - 10, 5, 5);
			ellipse(dieX + 10, dieY + 10, 5, 5);
		}
		if(diceRoll == 4)
		{
			ellipse(dieX - 10, dieY - 10, 5, 5);
			ellipse(dieX + 10, dieY - 10, 5, 5);
			ellipse(dieX - 10, dieY + 10, 5, 5);
			ellipse(dieX + 10, dieY + 10, 5, 5);
		}
		if(diceRoll == 5)
		{
			ellipse(dieX, dieY, 5, 5);
			ellipse(dieX - 10, dieY - 10, 5, 5);
			ellipse(dieX + 10, dieY + 10, 5, 5);
			ellipse(dieX - 10, dieY + 10, 5, 5);
			ellipse(dieX + 10, dieY - 10, 5, 5);
		}
		if(diceRoll == 6)
		{
			ellipse(dieX - 10, dieY - 10, 5, 5);
			ellipse(dieX + 10, dieY - 10, 5, 5);
			ellipse(dieX - 10, dieY, 5, 5);
			ellipse(dieX + 10, dieY, 5, 5);
			ellipse(dieX - 10, dieY + 10, 5, 5);
			ellipse(dieX + 10, dieY + 10, 5, 5);
		}
		sumRoll += diceRoll;
	}
}
