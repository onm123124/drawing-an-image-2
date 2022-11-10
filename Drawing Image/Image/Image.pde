//Global Variables
int appWidth, appHeight;
Boolean widthLarger=false, heightLarger=false;
Boolean width2Larger=false, height2Larger=false;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight, bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight, topHalfX, topHalfY, topHalfWidth, topHalfHeight;
PImage pic, pic2, pic3;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;

//
void setup()
{
  size(800, 600); //Landscape
  //Copy Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
  //
  //Image Dimensions for Aspect Ratio
  //Alberquerque.jpg
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth = 800;
  int picHeight = 600;
  int pic2Width = 620;
  int pic2Height = 420;
  int pic3Width = 759;
  int pic3Height = 422;
  //
  float smallerDimension, largerDimension,  smaller2Dimension, larger2Dimension;
  //Image Orientation: Landscape, Portrait, Square
  if ( picWidth >= picHeight ) { //True if Landscape or Square
    largerDimension = picWidth;
    smallerDimension = picHeight;
    widthLarger = true;
  } else { //False if Portrait
    largerDimension = picHeight;
    smallerDimension = picWidth;
    heightLarger = true;   
  }
   if ( pic2Width >= pic2Height ) { //True if Landscape or Square
    larger2Dimension = pic2Width;
    smaller2Dimension = pic2Height;
    width2Larger = true;
  } else { //False if Portrait
    larger2Dimension = picHeight;
    smaller2Dimension = picWidth;
    height2Larger = true;
  }
  //
  //Teaching example, width is known to be larger
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //Better Image Stretch Algorithm, smaller image to larger CANVAS
  if ( appWidth >= picWidth ) {
    picWidthAdjusted = appWidth;
    //
    if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
    //
    if ( appHeight >= picHeight ) {
      if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
      picHeightAdjusted = picWidthAdjusted * imageHeightRatio;
      if (appHeight < picHeightAdjusted ) {
        println("STOP: image is too big for CANVAS");
        exit(); //stops any further use of APP
        //Remember: goal is 1:1 aspect ratio
      }
    } else {
      //Image smaller than CANVAS needs separate algorithm
    }
  } else {
    //Image smaller than CANVAS needs separate algorithm
  }
  //
  //Verifying Variable Values after algoroithm
  println("/App Width:", appWidth, " and App Height:", appHeight);
  println("Larger Image dimension is:", largerDimension);
  println("Image dimensions are:", picWidth, picHeight);
  println("Adjusted Image dimesnions are (stretch is goal):", picWidthAdjusted, picHeightAdjusted);
  //
  //Population
  pic = loadImage("../image used/Landscape/Alberquerque.jpg");
  pic2 = loadImage("../image used/Landscape/Jesse.jpg");

  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  topHalfX = appWidth*1/4;
  topHalfY = appHeight*1/5;
  topHalfWidth = appWidth*1/4 ;
  topHalfHeight = appHeight*1/4;
  bottomHalfX = appWidth*3/4;
  bottomHalfY = appHeight*2/4;
  bottomHalfWidth = appWidth*1/4;
  bottomHalfHeight = appHeight*2.4;
  //
  //Rectangular Layout and Image Drawing to CANVAS
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( topHalfX, topHalfY, topHalfWidth, topHalfHeight ); //Top Half
  rect( bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight ); //Bottom Half
  //
  //Background Image must be single executed code
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  //image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
  //
}//End setup
//
void draw (){
image( pic2, topHalfX, topHalfY, topHalfWidth, topHalfHeight );
image( pic3, bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight);
}

  
//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //
  //Mouse Pressed will control background image
  if (mouseButton == LEFT) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
    //
  }
  if (mouseButton == RIGHT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
  }
}//End mousePressed
//
//End Main Program
