//Background Image example

//

//Global Variables
int appWidth, appHeight; 
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
//
size(1000, 1000); //Landscape
//copy display orientation
appWidth = width ;
appHeight = height ;
//population
pic = loadImage("../image used/0x0.jpg");
 imageBackgroundX = appWidth*0;
 imageBackgroundY =appHeight*0;
 imageBackgroundWidth =appWidth-1;
 imageBackgroundHeight =appHeight-1;
//

//
//Rectangle Layout and Image drawing to CANVAS
rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
//image(pic, imageX, imageY, imageWidth, imageHeight);
