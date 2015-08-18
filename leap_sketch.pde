import de.voidplus.leapmotion.*;
import development.*;

LeapMotion leap;
ArrayList<PVector> points = new ArrayList<PVector>();

void setup() {
  size(800, 500);
  colorMode(RGB);
  leap = new LeapMotion(this);
}

void draw() {
  int fps = leap.getFrameRate();
  background(0, 0, 0);
  for (Hand hand : leap.getHands ()) {
      Finger index = hand.getIndexFinger();
      println(index);
      PVector index_position = index.getPosition();
      noStroke();
      fill(255, 255, 255);
      ellipse(index_position.x, index_position.y, index_position.z/5, index_position.z/5);
      println(index_position.x,index_position.y, index_position.z);
      points.add(index_position);
  }
}


void mousePressed() {
  for (PVector p : points){
     fill(25, 250, 25);  
     ellipse(p.x, p.y, 20, 20);
  }
}

