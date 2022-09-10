Balloon[] balloon = new Balloon[600]; 

int score =0;

//___________________________________________________________||

void setupOne() 
{ 
  for (int i = 0; i < balloon.length; i++) 
  { 
    float w = random(20, 46); 
    balloon[i] = new Balloon(random(50, 350), random(50, 350), 
      w, w + random(5, 11), makeRandomColor());

  }
} 

//___________________________________________________________||

void gameOne() 
{ 
  background(255); 
  for (int i = 0; i < balloon.length; i++) 
  { 
    // update
    balloon[i].update();
   
    // balloon[i].destroy(); need to find a way to destroy the balls
    
    
    //This is my attempt to make a scoring system ||
    //I found that creating the scoring system was a little difficult but it became much easier after I thought about if||
    textSize(30);
    fill(0);
    text("score =" +score, 30, 30);
    
  }
} 

//___________________________________________________________||


void mousePressed()
{
  // if(mousePressed == destroy)
  //if(mousePressed > second(5) == doubleClick )

  //check all balloons to see if the mouse is close enough to destoy it!
  for (Balloon ball : balloon)
  {
    // check mouse is over this ball
    if (!ball.destroyed) { // this is NOT destroyed so check (IF Is IN Range
      ball.destroyed = ball.IsInRange(mouseX, mouseY);
      score = score +1;
    }
  }
}


//___________________________________________________________||


color makeRandomColor() 
{ 
  color result = color( 
    int(random(128, 255)), 
    int(random(128, 255)), 
    int(random(128, 255))); 
  return result;
} 

//___________________________________________________________||
