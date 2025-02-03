//Sophia Song
//Jan 31 2025

//pallette
color green = #4DC64C;
color blue = #55BFD8;
color black = #0D3C46;

// animation variables
float sunY;
float moonY;
boolean day;



void setup() {
  size(650, 600);
  day = true;
}


void draw() {
  //day-night
  if (day == true) {
    background(blue);
    //sun
    fill(#F2D56C);
    circle(130, sunY, 70);
    sunY = sunY + 1;
    if (sunY > 600){
      day = false;
      moonY = -70;
    }
  }
  
  if (day == false) {
    background(black);
    //moon
    stroke(black);
    fill(#F0F8FA);
    circle(130, moonY, 70);
    fill(black);
    circle(150, moonY, 70);
    moonY = moonY + 1;
    if (moonY > 600){
      day = true;
      sunY = -70;
    }
  }
  


 
  //house
  fill(#62B463);
  rect(0, 550, 650, 50);
  fill(#E8E8A2);
  rect(250, 300, 300, 300);
  fill(#A7A75B);
  triangle(250, 300, 550, 300, 400, 150);
  
  //windows
  fill(#CCF1FA);
  square(437.5, 400, 75);
  line(437.5, 437.5, 512.5, 437.5);
  line(475, 400, 475, 475);
  square(287.5, 400, 75);
  line(287.5, 437.5, 362.5, 437.5);
  line(325, 400, 325, 475);
  
  //door
  fill(#EDEDDA);
  rect(365, 490, 70, 110);
  fill(#DEDDBE);
  circle(375, 540, 10);
  
}



////global variables
//int x; //integers: 5, 0, -3
//float w; // decimals: 1, 0.5, -2.8
//boolean f; // true or false
//color red = #F50202; //stores colors
////animation variables
//float sunY;
