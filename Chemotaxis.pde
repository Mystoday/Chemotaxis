int a=250;
int b=250;

class Chaser {
  int myX, myY,myColor;
  Chaser(){ //construtor, innitialize member variables
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    myColor=(int)(Math.random()*200);
  }
  void walk(){
  if(mouseX+200>myX){
   myX = myX + (int)(Math.random()*3);
   }
   if(mouseX-200<myX){
   myX = myX - (int)(Math.random()*3);
   }
   if(mouseY+200>myY){
   myY = myY + (int)(Math.random()*3);
   }
   if(mouseY-200<myY){
   myY = myY - (int)(Math.random()*3);
   }
  }
  void show(){
  fill(myColor,0,myColor);
    ellipse(myX, myY, 80,20);
  }
}//end of Walker class

Chaser[] man=new Chaser[50];
void setup(){
 size(500,500);
 for(int i=0;i<man.length;i++){
  man[i]=new Chaser();
  }
}
void draw(){
  background(0);
  for(int i=0;i<man.length;i++){
  man[i].walk();
  man[i].show();
 }
 if(mouseX > a){
   a = a+ 20;
   }
   if(mouseX < a){
   a = a - 20;
   }
   if(mouseY > b){
   b = b + 20;
   }
   if(mouseY < b){
   b = b - 20;
   }
   fill(255,255,255);
 ellipse(a,b,20,20);
  }
