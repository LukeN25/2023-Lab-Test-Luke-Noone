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

float flagW = 400;
float flagH = 195;
float stripeW = 400;
float stripeH = 33;

float stripeSizeW = 0;
float stripeSizeH = 0;

void draw()
{
  background(255);
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
  
  strokeWeight(0);
  
  fill(255, 255, 255);
  rect(100, 600, stripeSizeW, stripeSizeH);
  fill(40, 255, 255);
  rect(100, stripeSizeH + 600, stripeSizeW, stripeSizeH);
  fill(80, 255, 255);
  rect(100, (stripeSizeH * 2) + 600, stripeSizeW, stripeSizeH);
  fill(120, 255, 255);
  rect(100, (stripeSizeH * 3) + 600, stripeSizeW, stripeSizeH);
  fill(170, 255, 255);
  rect(100, (stripeSizeH * 4) + 600, stripeSizeW, stripeSizeH);
  fill(225, 255, 255);
  rect(100, (stripeSizeH * 5) + 600, stripeSizeW, stripeSizeH);
  
  fill(0);
  triangle(100, 600, 100, (stripeSizeH * 6) + 600, (stripeSizeW / 3) + 100, (stripeSizeH * 3) + 600);
  fill(20, 255, 255);
  triangle(100, 600, 100, (stripeSizeH * 6) + 600, (stripeSizeW / 4) + 100, (stripeSizeH * 3) + 600);
  fill(245, 100, 255);
  triangle(100, 600, 100, (stripeSizeH * 6) + 600, (stripeSizeW / 6) + 100, (stripeSizeH * 3) + 600);
  fill(40, 255, 255);
  triangle(100, 600, 100, (stripeSizeH * 6) + 600, (stripeSizeW / 9) + 100, (stripeSizeH * 3) + 600);
  
  strokeWeight(5);
  noFill();
  stroke(200, 255, 255);
  circle((stripeSizeW / 6) + 100, (stripeSizeH * 3) + 600, stripeSizeW * .1);
  
  strokeWeight(0);
  fill(255, 255, 255);
  rect(400, 200, stripeSizeW, stripeSizeH);
  fill(40, 255, 255);
  rect(400, stripeSizeH + 200, stripeSizeW, stripeSizeH);
  fill(80, 255, 255);
  rect(400, (stripeSizeH * 2) + 200, stripeSizeW, stripeSizeH);
  fill(120, 255, 255);
  rect(400, (stripeSizeH * 3) + 200, stripeSizeW, stripeSizeH);
  fill(170, 255, 255);
  rect(400, (stripeSizeH * 4) + 200, stripeSizeW, stripeSizeH);
  fill(225, 255, 255);
  rect(400, (stripeSizeH * 5) + 200, stripeSizeW, stripeSizeH);
  
  fill(0);
  triangle(400, 200, 400, (stripeSizeH * 6) + 200, (stripeSizeW / 3) + 400, (stripeSizeH * 3) + 200);
  fill(20, 255, 255);
  triangle(400, 200, 400, (stripeSizeH * 6) + 200, (stripeSizeW / 4) + 400, (stripeSizeH * 3) + 200);
  fill(245, 100, 255);
  triangle(400, 200, 400, (stripeSizeH * 6) + 200, (stripeSizeW / 6) + 400, (stripeSizeH * 3) + 200);
  fill(40, 255, 255);
  triangle(400, 200, 400, (stripeSizeH * 6) + 200, (stripeSizeW / 9) + 400, (stripeSizeH * 3) + 200);
  
  strokeWeight(5);
  noFill();
  stroke(200, 255, 255);
  circle((stripeSizeW / 6) + 400, (stripeSizeH * 3) + 200, stripeSizeW * .1);
  
  if(stripeSizeW <= 400)
  {
    stripeSizeW = stripeSizeW + 2;
    stripeSizeH = stripeSizeH + 0.17;
  }
  if(stripeSizeW == 400)
  {
    stripeSizeW = 0;
    stripeSizeH = 0;
  }

  
  /*
  fill(255, 255, 255);
  rect(100, 100, stripeW, stripeH);
  fill(40, 255, 255);
  rect(100, 133, stripeW, stripeH);
  fill(80, 255, 255);
  rect(100, 166, stripeW, stripeH);
  fill(120, 255, 255);
  rect(100, 199, stripeW, stripeH);
  fill(170, 255, 255);
  rect(100, 232, stripeW, stripeH);
  fill(225, 255, 255);
  rect(100, 265, stripeW, stripeH);
  
  fill(0);
  triangle(100, 100, 100, 300, 300, 200);
  fill(20, 255, 255);
  triangle(100, 100, 100, 300, 260, 200);
  fill(245, 100, 255);
  triangle(100, 100, 100, 300, 220, 200);
  fill(40, 255, 255);
  triangle(100, 100, 100, 300, 180, 200);
  
  stripeSizeW = stripeSizeW + 2;
  
  
  fill(255);
  rect(500, 600, flagW, flagH);
  fill(255, 255, 255);
  rect(500, 600, stripeW, stripeH);
  fill(40, 255, 255);
  rect(500, 633, stripeW, stripeH);
  fill(80, 255, 255);
  rect(500, 666, stripeW, stripeH);
  fill(120, 255, 255);
  rect(500, 699, stripeW, stripeH);
  fill(170, 255, 255);
  rect(500, 732, stripeW, stripeH);
  fill(225, 255, 255);
  rect(500, 765, stripeW, stripeH);
  
  fill(0);
  triangle(500, 600, 500, 800, 700, 700);
  fill(20, 255, 255);
  triangle(500, 600, 500, 800, 660, 700);
  fill(245, 100, 255);
  triangle(500, 600, 500, 800, 620, 700);
  fill(40, 255, 255);
  triangle(500, 600, 500, 800, 580, 700);
  */
}
