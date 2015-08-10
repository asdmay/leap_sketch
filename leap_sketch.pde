import de.voidplus.leapmotion.*;
import development.*;

LeapMotion leap;

void setup() {
  size(800, 500);
  background(0);
  leap = new LeapMotion(this);
}

void draw() {
  int fps = leap.getFrameRate();
  for (Hand hand : leap.getHands ()) {
      Finger index = hand.getIndexFinger();
      println(index);
  for (Finger finger : hand.getFingers()) {
      PVector index_position = index.getPosition();
      noStroke();
      ellipse(index_position.x, index_position.y,20, 20);
      println(index_position.x,index_position.y, index_position.z);
  }
  }
}

