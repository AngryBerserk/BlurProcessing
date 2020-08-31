import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

ArrayList<Shape> shapes = new ArrayList<Shape>();
final int COUNT = 800;

void setup(){
 size(640,480, P3D);
 //fullScreen(P3D);
 PeasyCam cam;
 for (int i = 0; i < COUNT; i++){
    Shape s= new Shape();
    s.location.z = - COUNT/2 + i;
    shapes.add(s);
 }
 cam = new PeasyCam(this, COUNT);
}

void draw(){
  background(0);
  lights();
  pointLight(255,255,255,0,0,0);
  for (int i = 0; i<shapes.size() / 2;i++){
     Shape s = shapes.get(i);
     s.update();
  }
  filter(BLUR,2);
  for (int i = shapes.size()/2; i<shapes.size();i++){
     Shape s = shapes.get(i);
     s.update();
  }
}