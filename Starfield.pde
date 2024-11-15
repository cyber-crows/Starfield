lightbeam[] crow= new lightbeam[100];
int mover;
void setup(){
size(500,500);  

}
void draw(){
background(0);
stroke(255); 
noFill();
ellipse(250,250,400,450);
fill(255);

for(int i=0; i<crow.length;i++){
crow[i]= new lightbeam(350,150);
crow[i].move();
crow[i].show();

}
for(int i=0; i<crow.length;i++){
crow[i]= new lightbeam(150,150);
crow[0] = new mouth(250,mover);
crow[i].move();
crow[i].show();
}


}


class lightbeam{
  double myX, myY, myAngle, myWidth, myHeight;
  int mySpeed;
  lightbeam(){}
    lightbeam(int input1, int input2){
          myX = input1;
          myY = input2;
          myWidth = (Math.random()*80);
          myHeight = (Math.random()*80);
          myAngle=(Math.random()*2*Math.PI);
          mySpeed=(int)(Math.random()*5);
     }
void show(){
fill(255);
ellipse((float)myX,(float)myY,(float)myHeight,(float)myWidth);

}

void move(){
 myX+=Math.cos(myAngle)*mySpeed;
 myY+=Math.sin(myAngle)*mySpeed;
}
}

class mouth extends lightbeam{
mouth(){
  //empty!
}
mouth(int input1, int input2){
  //super(input1, input2);
 myX = input1;
 myY = input2;
   myWidth = 50;
          myHeight = 100;
          mySpeed=10;
}
void move(){
if (mover > 500)
 mover-=3;
if (mover < 350)
  mover+=3;
}
}


