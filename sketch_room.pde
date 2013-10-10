float x1;
float y1;
float i;
float x=450;
float y=200;
float a;
float x2;
float y2;
float Bwidth;
float Bheight;
float y3;
float x3;

void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  background(255);
  frameRate(1);

  //draw the wallpaper
  fill(#FC9D9A);
  noStroke();
  rect(0, 0, 800, 280);

  //draw the window on the wall
  noStroke();
  fill(255);
  rect(180, 20, 400, 240);

  //draw buildings
  for (int a=180;a<500;a=a+20) {
    float Bwidth = random(50, 100);
    float Bheight = random(100, 150);
    fill(#A2C9D3);
    noStroke();
    rect(a, Bheight-50, Bwidth, Bheight);
    
    //draw windows on the buildings
    for (float x2=a+10;x2<a+Bwidth-20;x2=x2+10) {
      for (float y2=Bheight-50;y2<Bheight+60;y2=y2+20) {
        fill(#EDECE1);
        rect(x2, y2, 10, 10);
      }
    }
  }

  //draw the table
  fill(#F9CDAD);
  noStroke();
  rect(40, 300, 200, 20);
  rect(40, 320, 20, 60);
  rect(220, 320, 20, 60);

  //draw the carpet
  fill(#D2D947);
  noStroke();
  ellipse(570, 470, 400, 100);

  //draw the bed
  noStroke();
  fill(#C8C8A9);
  rect(720, 330, 15, 120);
  rect(420, 390, 300, 15);
  rect(420, 405, 15, 45);

  //draw the mattress
  noStroke();
  fill(#44A18E);
  bezier(420, 390, 420, 350, 720, 350, 720, 390);

  //draw the pillow
  noStroke();
  fill(#E5EDB6);
  bezier(720, 330, 700, 330, 700, 390, 720, 390);


  //draw the circle from the clock
  fill(#FF8477);
  ellipse(680, 80, 120, 120);
  fill(255);
  ellipse(680, 80, 100, 100);

  //draw the secondhand from the clock
  i=second();
  stroke(0);
  y1=((sin(radians(6*i))*30)+80);
  x1=((cos(radians(6*i))*30)+680);
  line(680, 80, x1, y1);
  
  //draw the tick marks
  for(float i=0;i<60;i=i+15){
    y3=((sin(radians(6*i))*40)+80);
    x3=((cos(radians(6*i))*40)+680);
    noStroke();
    fill(#FFD3CB);
    ellipse(x3,y3,5,5);
  }

  //draw the cat
  x= mouseX;
  y= mouseY;
  stroke(0);
  fill(245, 220, 152);  

  //draw the ears for the cat
  triangle(x-325, y-75, x-387.5, y-75, x-370, y-160);
  triangle(x-325, y-75, x-262.5, y-75, x-300, y-160);

  ellipse(x-100, y+50, 300, 30);
  ellipse(x-200, y+30, 230, 200);

  //draw the legs for the cat
  ellipse(x-340, y+50, 40, 200);
  ellipse(x-300, y+50, 40, 200);

  //draw the brwon feet for the cat
  fill(157, 113, 28);
  ellipse(x-365, y+139, 70, 30);
  ellipse(x-270, y+139, 70, 30);

  //draw the head for the cat
  fill(245, 220, 152);
  ellipse(x-325, y-75, 125, 125);

  //draw the eye frame for the cat
  fill(255);
  ellipse(x-356.25, y-75, 25, 25);
  ellipse(x-293.75, y-75, 25, 25);

  //draw the eye ball for the cat
  fill(164, 251, 250);
  ellipse(x-356.25, y-75, 10, 25);
  ellipse(x-293.75, y-75, 10, 25);

  //draw the moustache for the cat
  line(x-356.25, y-50, x-410, y-50);
  line(x-356.25, y-40, x-410, y-40);
  line(x-356.25, y-30, x-410, y-30);
  line(x-293.75, y-50, x-240, y-50);
  line(x-293.75, y-40, x-240, y-40);
  line(x-293.75, y-30, x-240, y-30);

  noFill();
  line(x-325, y-60, x-325, y-40);
  arc(x-340, y-40, 30, 30, 0, PI/2.0);
  arc(x-310, y-40, 30, 30, PI/2, PI);

  //draw the brown foot for the cat
  fill(157, 113, 28);//brown foot
  ellipse(x-180, y+120, 100, 40);
}


