// Simple Rolling Eye Object. 

class Eye
{
  float eye_x, eye_y;
  float eye_size;
  float pupil_size;
  float boundary;
  
  Eye(float x, float y, float size)
  {
    eye_x = x;
    eye_y = y;
    eye_size = size;
    pupil_size = eye_size/4;
    boundary = (eye_size/2)-(pupil_size/2);
  }
  
  void open()
  {
    fill(255);
    ellipse(eye_x, eye_y, eye_size, eye_size);
    fill(30);

    float distance = dist(mouseX, mouseY, eye_x, eye_y);    
    float ratio = boundary/distance;
    
    if (distance < boundary) {
      ellipse(mouseX, mouseY, pupil_size, pupil_size);
    } else {
      float pupil_x = eye_x + (mouseX - eye_x) * ratio;
      float pupil_y = eye_y + (mouseY - eye_y) * ratio;
      ellipse(pupil_x, pupil_y, pupil_size, pupil_size);
    }
  }
  
  void close()
  {
    float l = (eye_size/2);
    line(eye_x-l, eye_y, eye_x+l, eye_y);
  }
}