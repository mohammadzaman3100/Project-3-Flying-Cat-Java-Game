int number = 0;
int pagenum =1;
int pageNum =1;

//___________________________________________________________||

void setup()
{
  size (950, 750);
  background(255);

  if (pageNum ==1)
  {
    setupOne();
  }
  if (pageNum ==2)
  {
    setupTwo();
  }
}

//___________________________________________________________||

void draw()
{
  if (pagenum ==1)
  {
    gameOne();
  }
  if (pagenum ==2)
  {
    gameTwo();
  }
}




//___________________________________________________________||

void keyPressed()
{
  if (key =='1')
  {
    pagenum= 1;
  }

  if (key =='2')
  {
    pagenum= 2;
  }

  if (key =='s')
  {
    save("image1_" +number+"jpg");
    number++;
  }

  if (key =='d')
  {
    delay (5000);
  }

  if (key =='q')
  {
    exit();
  }
}
