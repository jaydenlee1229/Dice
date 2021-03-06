Die one;
float sumRoll = 0;
void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	sumRoll = 0;
	for(int y = 25; y < 449; y += 50)
	{
		for(int x = 25; x < 499; x += 50)
		{
			one = new Die(x, y);
			one.show();
		}
	}
	noStroke();
	fill(50, 150, 200);
	rect(0, 450, 500, 100);
	fill(0);
	textSize(15);
	textAlign(CENTER);
	text("STOP", 250, 480);
}
void mousePressed()
{
	if(mouseY <= 450)
	{
		redraw();
		loop();
	}
	else
	{
		noStroke();
		fill(50, 150, 200);
		rect(0, 450, 500, 100);
		fill(0);
		textSize(15);
		textAlign(CENTER);
		text("SUM OF ROLL: " + (int)sumRoll, 145, 480);
		text("AVERAGE ROLL: " + sumRoll / 80, 345, 480);
		noLoop();
	}		
}
class Die
{
	int diceRoll;
	int dieX;
	int dieY;
	Die(int x, int y)
	{
		dieX = x;
		dieY = y;
		roll();
	}
	void roll()
	{
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
		float averageRoll = sumRoll / 90;
	}
}