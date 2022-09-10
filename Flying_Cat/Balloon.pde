
class Balloon 
{ 
  float w; 
  float h; 
  float x; 
  float y; 
  float r; 
  float g; 
  float b; 
  color bColor; 
  float HSpeed; 
  float VSpeed; 
  public boolean destroyed = false;

  //___________________________________________________________||

  Balloon(float x, float y, float w, float h, color bColor) 
  { 
    this.w = w; 
    this.h = h; 
    this.x = x; 
    this.y = y; 
    this.bColor = bColor; 
    this.HSpeed = int(random(2, 8)); 
    this.VSpeed = int(random(2, 7));
  } 

  //___________________________________________________________||

  void display() 
  {
    fill(bColor); 
    ellipse(x, y, w, h);
  } 

  //___________________________________________________________||

  void move() 
  { 
    x = x + HSpeed; 
    y = y + VSpeed;
  } 

  //___________________________________________________________||

  void bounce() 
  { 
    if (x < 0 + w / 2.0 || x > width - w / 2.0) 
    { 
      HSpeed = -HSpeed;
    } 
    if (y < 0 + h / 2.0 || y > height - h / 2.0) 
    { 
      VSpeed = -VSpeed;
    }
  }

  //___________________________________________________________||

  public void update()
  {
    if (!destroyed)
    {
      //display, move snd bounce
      this.display(); 
      this.move(); 
      this.bounce();
    }
  }

  //___________________________________________________________||

  public boolean IsInRange(int pX, int pY) 
  { 
    // renamed/ [refactored] destroy method to IsInRange to make it more readable
    //  float a = w / 2.0; 
    //  float b = h / 2.0; 
    //  float r = (ex * ex) / (a * a) + (ey * ey) / (b * b); 
    float ex = pX - x;     // calculate relative to center of ellipse||
    float ey = pY - y; 
    float d = sqrt((ex * ex) + (ey * ey));   //this is the distance||
    return (d < w/2.0f);
  } 
  //distance
}

//___________________________________________________________||
