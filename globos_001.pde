
ArrayList<Globo> globos;

void setup()
{
  size(displayWidth, displayHeight);
  background(255, 255, 255);
  globos = new ArrayList<Globo>();
}

void draw()
{
  background(155, 226, 244);
  for (int i = 0; i<globos.size(); i++)
  {
    Globo g = globos.get(i);
    g.update();
    g.draw();
  }
}

void mousePressed()
{
  globos.add(new Globo(random(100, 150), 
    color(random(255),random(255),random(255)),
    mouseX, 
    mouseY, 
    0.0, 
    0.0));
    println(globos.size());
}