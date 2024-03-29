float baseH = 30;
float armL1 = 60;
float armL2 = 60;
float armL3 = 70;
float armL4=20;
float tableY =60 ;
float tableT= 30;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float l3 = 0;
float l1=0;
float dif = 1;
float x=250;
float y=250;
float z=70;

void setup(){
  size(1600, 1600, P3D);
  lights();
  noStroke();  
}

void draw(){
   camera(x, y, z, 0, 0, -10, 0, 0, -1);
  
  background(255);
  
if(keyPressed){
    if(key == 'b'){
      angle0 = angle0 + dif;
    }
    if(key == 'B'){
      angle0 = angle0 - dif;
    }
    if(key=='x'){
    x=x+dif;
    }
    if(key=='X'){
    x=x-dif;
    }
     }
    if(key=='y'){
    y=y+dif;
    }
    if(key=='Y'){
    y=y-dif;
    }
    
    if(key=='z'){
    z=z+dif;
    }
    if(key=='Z'){
    z=z-dif;
    }

  
  if (angle1 >-14.53){
    if(keyPressed){
      if(key=='e'){
        l3 = l3 +46/14.53 * dif;
        angle1=angle1-dif;
        angle2=angle2+(30.45/14.53)*dif;
      }
    }
  
    else if(keyPressed){
      if(key=='e'){
        l3 = 46;
        angle1=-14.53;
        angle2=30.45;
      }
    }
  }
  if (angle1 <0){
    if(keyPressed){
      if(key=='E'){
        l3 = l3 -46/14.53*dif;
        angle1=angle1+dif;
        angle2=angle2-(30.45/14.53)*dif;
      }
    }
  
    else if(keyPressed){
      if(key=='E'){
        l3 = 0;
        angle1=0;
        angle2=0;
      }
    }
  }   
             
pushMatrix();
fill(180);
box(30,10,baseH);
  
rotateX(radians(angle1));
translate(0,armL1/2,l1);
fill(160);
box(10,armL1,10);
 
 translate(0,armL1/2,0);
 rotateZ(radians(angle2));
sphere(10);

translate(armL2/2,0,0);
fill(200);
box(armL2,10,10);

translate(l3,0,0);
fill(140);
box(armL3,5,5);

translate(armL3/2,0,0);
fill(150);
sphere(5);

rotateZ(radians(-angle2));
rotateX(radians(-angle1));
rotateY(radians(angle0));
translate(0,armL4/2,0);
fill(125);
box(5,armL4,5);

translate(0,armL4/2+tableT/2,0);
fill(130);
box(tableY,tableT,3);

translate(0,15,2.5);
fill(130);
box(tableY,3,5);

translate(0,-tableT,0);
fill(130);
box(tableY,3,5);

popMatrix();

translate(100,150,-70);
box(tableT+10,tableT+10,10);


}
