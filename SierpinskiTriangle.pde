int serY =0;
int serX = 10;
int ser2Y =0;
int size1 =0;
int c = 50;
int y =0;
boolean fuzzy = false;
public void setup()
{
  size(900,700);

}
public void draw()
{
  background(0);

  fill(247,214,161);
  sierpinski(0 +serX,width/2+serY-c,width/3+size1);
  fill(103,250,35);
  sierpinski(width/3 +serX ,width/2+serY-c,width/3+size1);
  fill(250,235,142);
  sierpinski(2*width/3+serX,width/2+serY-c,width/3+size1);
  fill(255,167,25);
  sierpinski2(10,width/2+ser2Y-c,width/3+size1);
  fill(197,247,173);
  sierpinski2(10+width/3,width/2+ser2Y-c,width/3+size1);
  fill(250,194,25);
  sierpinski2(10+2*width/3,width/2+ser2Y-c,width/3+size1);
  
  if(width/2+ser2Y-c>=200){
    ser2Y-=5;
  }
    
}

void keyPressed() {
  if(keyCode == 38){
    fuzzy = true;
    ser2Y = 50;
    size1 = 0;
  }
  if(keyCode == 40){
    fuzzy = false;
    ser2Y =50;
    size1 =0;
  }
}
public void mouseDragged()//optional
{
size1++;
if(size1==305){
  size1 = -100;
}
}
public void sierpinski(int x, int y, int len) 
{
  if (len<=20){
    if(fuzzy==true){
      triangle(x-len/2,y-len/2,x+len/2, y-len/2,x,y+len/2);
    }
    else{
      triangle(x,y-len/2,x+len/2, y+len/2,x-len/2,y+len/2);
    }
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
public void sierpinski2(int x, int y, int len) 
{
  if (len<=20){
    if(fuzzy==true){
      triangle(x,y-len/2,x+len/2, y+len/2,x-len/2,y+len/2);
    }
    else{
      triangle(x-len/2,y-len/2,x+len/2, y-len/2,x,y+len/2);
    }
  }
  else{
    sierpinski2(x,y,len/2);
    sierpinski2(x+len/2,y,len/2);
    sierpinski2(x+len/4,y+len/2,len/2);
  }
}
