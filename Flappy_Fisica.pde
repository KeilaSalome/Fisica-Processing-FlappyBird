import fisica.*;
FWorld world;
FCircle circleButton;
FBox box1;
FBox box2;
FBox box3;
FBox box4;
FBox box5;
FBox box6;
FBox box7;
FBox box8;
FBox box9;
FBox box10;
FBox box11;
FBox box12;


  
void setup() {
  
  size(1200, 500);
  
  Fisica.init(this);
  
  world = new FWorld();
  world.setEdges();
  world.remove(world.top);
  world.remove(world.left);
  
  circleButton = new FCircle(30);
  circleButton.setPosition(-15, 200);

  circleButton.setNoStroke();
  circleButton.setDamping(-1);
  circleButton.addForce(10000,0);
  circleButton.addImpulse(8500,0);
  circleButton.setFill(255,0,0);
  world.add(circleButton);
  
  box1 = new FBox(15,150);
  box1.setPosition(250,50);
  box1.setStatic(true);
  box1.setNoStroke();
  world.add(box1);
  
  box5 = new FBox(15, 400);
  box5.setPosition(250, 410);
  box5.setStatic(true);
  box5.setNoStroke();
  world.add(box5);
  /////////
  
  box2 = new FBox(15, 200);
  box2.setPosition(450, 100);
  box2.setStatic(true);
  box2.setNoStroke();
  world.add(box2);
  
   
  box6 = new FBox(15, 400);
  box6.setPosition(450, 485);
  box6.setStatic(true);
  box6.setNoStroke();
  world.add(box6);
  ////////
  
  box3 = new FBox(15, 200);
  box3.setPosition(610, 20);
  box3.setStatic(true);
  box3.setNoStroke();
  world.add(box3);
  
  box7 = new FBox(15, 400);
  box7.setPosition(610, 405);
  box7.setStatic(true);
  box7.setNoStroke();
  world.add(box7);
  /////////
  
  box4 = new FBox(15, 300);
  box4.setPosition(800, 20);
  box4.setStatic(true);
  box4.setNoStroke();
  world.add(box4);
  
  box8 = new FBox(15, 300);
  box8.setPosition(800, 420);
  box8.setStatic(true);
  box8.setNoStroke();
  world.add(box8);
  
  ////////
  
  box9 = new FBox(15, 300);
  box9.setPosition(950, 100);
  box9.setStatic(true);
  box9.setNoStroke();
  world.add(box9);
  
  box10 = new FBox(15, 300);
  box10.setPosition(950, 510);
  box10.setStatic(true);
  box10.setNoStroke();
  world.add(box10);
  
  box11 = new FBox(15, 300);
  box11.setPosition(1100, 49);
  box11.setStatic(true);
  box11.setNoStroke();
  world.add(box11);
  
  box12 = new FBox(15, 300);
  box12.setPosition(1100, 440);
  box12.setStatic(true);
  box12.setNoStroke();
  world.add(box12);

}
void draw() {
  background(200);

  world.step();
  world.draw();
 
}


void mousePressed() {
 circleButton.addImpulse(40,-380);
}

void contactStarted(FContact contacto) { 
  FBody circleButton = contacto.getBody2();
 setup();
}


