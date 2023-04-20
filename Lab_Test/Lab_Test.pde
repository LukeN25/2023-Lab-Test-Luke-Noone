//2023 Lab Test 2

void setup()
{
  size(1000, 1000);
  colorMode(HSB);
}

ArrayList<Flags> flags = new ArrayList<Flags>();

int halfW = width / 2;
int halfH = height / 2;


Flags flag;

void makeFlags(int count)
{
  flags.clear();
  float halfW = width / 2;
  float halfH = height / 2;
  float radius = 500;
  
  for(int i = 0 ; i < count ; i ++)
  {
    float theta = map(i, 0, count, 0, TWO_PI);
    float x = halfW + sin(theta) * radius;
    float y = halfH - cos(theta) * radius;
    
    Flags flag = new Flags(0, 0, 0, x, y);
    flags.add(flag);
    
  }
}

void draw()
{
  background(0);
  /*
  for(int i = 0; i < 40; i ++)
  {
    //circle(i + 10, 500, 20);
  }

  for(int i = 0 ; i < flags.size() ; i ++)
  {
    Flags flag = flags.get(i);
    flag.c = color(map(20, 0.0f, 1.0f, 0, 255), 255, 255);
    flag.speed = map(20, 0.0f, 1.0f, 0, 0.2);
    flag.size = map(20, 0, 1, 300, 600);
    flag.update();
    flag.render();
  }
  */
  fill(255);
  rect(100, 100, 400, 200);
  rect(100, 100, 400, 33);
  rect(100, 133, 400, 33);
  rect(100, 166, 400, 33);
  rect(100, 199, 400, 33);
  rect(100, 232, 400, 33);
  rect(100, 265, 400, 33);
  
  triangle(100, 100, 100, 300, 200, 200);
}
