
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
  fill(255);
  textSize(20);
  text("Live footage of your bloodstream right now", 40, 400);
}  
 class Bacteria
 {     
 	public int x, y;
 	public color colorBac;
 	
 	Bacteria()
 	{
 		x = y = (int)(Math.random()*500);
 		colorBac = color(255, 0, 0);
 	}
 	public void move()
 	{
 		x = x+ (int)(Math.random()*7)-2;
    	y = y + (int)(Math.random()*7)-2;

 	}
 	public void show() 
 	{
 		fill(colorBac);
 		if (get(x,y) == color(255))
 		ellipse(x, y, 10, 10);
 	if (x > 400 || y > 400)
 		x = y = (int)(Math.random()*500);
 	}

 }    

