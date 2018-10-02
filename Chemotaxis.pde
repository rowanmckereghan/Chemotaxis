Bacteria gang[] = new Bacteria[500];
void setup()   
 {     
	size(500, 500);
	for (int i= 0; i < gang.length; i++)
  {
    gang[i] = new Bacteria();
  } 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
background(0);
  for (int i= 0; i < gang.length; i++)
  {
    gang[i].show();
    gang[i].move();
  } 
}  
 class Bacteria    
 {     
 	int x, y;
 	color colorBac;
 	
 	Bacteria()
 	{
 		x = y = 250;
 		colorBac = color(255, 0, 0);
 	}
 	void move()
 	{
		x = x + (int)(Math.random()*7)-3;
    	y = y + (int)(Math.random()*7)-3;
 	}
 	void show() 
 	{
 		fill(colorBac);
 		ellipse(x, y, 3, 3);
 	}

 }    
