
Bacteria gang[] = new Bacteria[100];
void setup()   
 {     
	size(500, 500);
	for (int i= 0; i < gang.length; i++)
  {
    gang[i] = new Bacteria();
  } 
 
  	//initialize bacteria variables here   
 }   
 void draw()   
 {    
background(0);
 fill(255);
ellipse(250, 250, 100, 100);
beginShape();
noStroke();
fill(254, 254, 254, 100);
vertex(285, 285);
vertex(285, 215);
vertex(25, -25);
vertex(-25, 25);
vertex(215, 285);
endShape();
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
 		x = y = (int)(Math.random()*500);
 		colorBac = color(255, 0, 0);
 	}
 	void move()
 	{
 		x = x+ (int)(Math.random()*7)-2;
    	y = y + (int)(Math.random()*7)-2;

 	}
 	void show() 
 	{
 		fill(colorBac);
 		if (get(x,y) == color(255))
 		ellipse(x, y, 10, 10);
 	}

 }    
