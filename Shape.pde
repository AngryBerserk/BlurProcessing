class Shape{
  PVector location = new PVector(random(-width,width), random(-height,height), random(-300,0));
  PVector velocity = PVector.random3D().mult(0.07);
  PVector angle = new PVector();
  float size = random(30);
  
  void update(){
   pushMatrix();
   translate(location.x, location.y, location.z);
   angle.add(velocity);
   rotateX(angle.x);
   rotateY(angle.y);
   rotateZ(angle.z);
   rectMode(CENTER);
   fill(255);
   //rect(0,0,size, size);
   box(size);
   popMatrix();
  }
}