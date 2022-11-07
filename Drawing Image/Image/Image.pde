//Background Image example

//

//Global Variables
int appWidth, appHeight; 
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightmode=false;
//
size(780, 439); //Landscape
//copy display orientation
appWidth = width ;
appHeight = height ;
//
//Apsect ratio calculations
int picWidth = 800;
int picHeight = 600;
//Image orientation: Landscape, Portrait, Square
if () {} else {}
//population
pic = loadImage("../image used/Alberquerque.jpg");
 imageBackgroundX = appWidth*0;
 imageBackgroundY =appHeight*0;
 imageBackgroundWidth =appWidth-1;
 imageBackgroundHeight =appHeight-1;
//

//
//Rectangle Layout and Image drawing to CANVAS
rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
if (nightmode == false)tint(255, 128, 0);
if (nightmode == true)tint(255, 255, 255);//RGB:Night mode
image(pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//if()else {} for a binarry choice, no single IF
