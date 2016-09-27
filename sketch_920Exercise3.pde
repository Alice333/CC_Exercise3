int option = 1;


void setup(){
  //frameRate(100);
size(300,300); //width, height
  
}

void draw(){
  background(255,165,226); 
  noFill();
  
if(option==1){
    frameRate(50);
    for(int x=0; x<=width/2; x+=50){
       for(int y=0; y<=height/2; y+=50){
         strokeWeight(2);
        quad(width/2, 150-y,150-x,height/2,width/2,150+y, 150+x, height/2);
       stroke(random(255), random(255),random(255));
     }//end of second loop
    }//end of first loop
} //end of option 1 
  
   else if (option == 2) {
     background(119,255,219);
    frameRate(50);
    for (int x = 50; x <= width-50; x += 25) {
      for (int y = 50; y <= height-50; y+=25) {
        strokeWeight(1);
        stroke(random(255), random(255),random(255));
        ellipse(x, y, 30, 30);
      }// end of second loop
    }//end of first loop
   }//end of option 2
 
   else if(option==3){
     background(0);
     frameRate(4);
     for(int x = 30; x<=width-10; x+=20){
       for(int y=30; y<=height-10; y+=20){
        strokeWeight(1);
        stroke(random(255),random(255),random(255));
        line(x,y,x+30,y+30);
        line(x-40,y-30,x,y);
        line(x+30,y,x-50,y+20);
       
       }
     }
   }//end of option3
  
  
    else if(option==4){
      frameRate(4);
      int r=0;
      int g=0;
      int b=0;
      
      
      for(int x= 0, y=0; x<=width/2 || y<=height/2 ; x+=20, y+=20){
          strokeWeight(2);
          stroke(r, g, b);
          r=r+10;
          b=b+20;
          g=g+30;
          
         triangle(width/2-x,height/2,width/2+x,height/2,width/2,height/2-y);
         triangle(width/2-x,height/2,width/2+x,height/2,width/2,height/2+y);
         
      }
    }//end of option4
    
    else if(option==5){
      background(231,197,255);
      strokeWeight(2);
      stroke(random(255), random(255),random(255));
      for(int x=0; x<=width; x+=20){
        for(int y=0;y<=height; y+=30){
          
      rect(x, y, mouseX, mouseY);
      for(int a=0; a<=width/2; a+=50){
        for(int b=0; b<=height/2; b+=50){
      ellipse(mouseX,mouseY, a+10,b+10);
        }
      }
      
        }
      }
    }//end of option5
      
  else if(option==6){
    background(167,255,215);
    
    strokeWeight(4);
    int r=0;
    int g=0;
    int b=0;
    stroke(r,g,b,180);
    r= r+10;
    g= g+20;
    b= b+30;
    
    strokeWeight(1);
    stroke(255,134,252,180);
    line(78,79,69,95);
    line(88,79,75,100);
    line(97,82,88,101);
    line(240,93,227,111);
    line(253,88,238,106);
    line(262,95,256,111);
    
    noStroke();
    fill(247,255,119,180);
    ellipse(139,50,30,40);
    ellipse(222,53,30,40);
    for(int x=0; x<=width/2; x+=50){
      for(int y=0;y<=height/2; y+=30){
        
        noStroke();
        fill(255,102,113,180);
        arc(150,150,mouseX, mouseY, 0,PI+QUARTER_PI,CHORD);
        
        strokeWeight(2);
        stroke(23,49,37);
        arc(180, 180, mouseX,mouseY, PI,PI+QUARTER_PI, OPEN);
        
        
      }
    }
  }//end of option 6
      
  
  println(mouseX, mouseY);
  
  
}//end of void draw



/* 
void keyPressed(){
  if (keyCode==UP){
    option++;
    if (option>3)
      option=3;
  }
  if (keyCode==DOWN){
    option--;
    if (option<1)
      option=1;
  } 
} 
*/

void mousePressed(){
  option++;
  if(option>6) 
  option=1;
}//end of void mousePressed