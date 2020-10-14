/*
 *  plot.c
 *  
 *  Created by Fredrik Sandin on 20/08/12.
 */

#include "tga.h"
#include <math.h>
#include "interp1.h"

/*!
	Draw circle on image.
 
	\param image Image buffer of size width*height.
	\param width Width of image.
	\param height Height of image.
	\param x0 X-coordinate of circe centre.
	\param y0 Y-coordinate of circe centre.
	\param radius Radius of circle.
	\param color Color of circle.
*/
void draw_circle(PIXEL_RGB24 *image, int width, int height,
	int x0, int y0, int radius, const PIXEL_RGB24 *color) {
	
	double alpha; /* angle */
	int x,y,index;
	
	for(alpha=0; alpha<=2*M_PI; alpha+=0.5/radius) {
		
		x = x0 + radius*cos(alpha); /* x coordinate */
		y = y0 + radius*sin(alpha); /* y coordinate */
		
		if(x>=0 && x<width && y>=0 && y<height ) {
		
			index = x + width*y; /* index of pixel in buffer */
			
			copy_pixel(&image[index], color);
		}
	}
}
void draw_line(PIXEL_RGB24 *image, const PIXEL_RGB24 *color, int width, int height, float x1, float y1, float x2, float y2){
    float x[width], y[height], Y2;
    int index, sizex;
    x[0] =x1;
    x[1] =x2;
    index = width*y1+x1;
    copy_pixel(&image[index], color);

    y[0] =y1;
    y[1] =y2;
    index = width*y2+x2;
    copy_pixel(&image[index], color);

    sizex = sizeof(x);
    for (int i = 2; i <x2;i++ ){
        if (interp1(x ,y, sizex, x2, &Y2) != 1){

            int index = width * (Y2+y1) + i-1+x1;
            //realign

            x[i] = x[i-1];
            y[i] = y[i-1];

            x[i-1] =x1+i-1;
            y[i-1] =Y2;

            copy_pixel(&image[index], color);
        }
    }





    /*double k = (y_2-y1)/ ( (double ) (x2-x1) );
    int length = (x2-x1);
    double arr_x[length], arr_y[length];

    for (int i = x1; i <= x2;  ){
         arr_x[i] = i;
         arr_y[i] = k*i+y1;
        i++;

    }
    */

}


int main(void) {

	int width;
	int height;
	PIXEL_RGB24 *image,red,green,blue;

	red.R=255; red.G=0;     red.B=0;
	green.R=0; green.G=255; green.B=0;
	blue.R=0;  blue.G=0;    blue.B=255;
	
	if(tga_read("C:\\Users\\david\\Documents\\Skola\\D0017E\\Labb3\\3b\\Plot\\empty.tga",&width,&height,&image)!=TGA_OK) {
		goto error;
	}
    image = (PIXEL_RGB24 *) malloc(sizeof(PIXEL_RGB24) * width * height);

	/* Draw a few circles on the image */
	//draw_circle(image,width,height,width/2,height/2,width/5,&red);
	//draw_circle(image,width,height,width/2,height/2,width/4,&green);
	//draw_circle(image,width,height,width/2,0,width/2,&blue);
    draw_line(image,&red,width, height,100,100,200,201);
	if(tga_write("C:\\Users\\david\\Documents\\Skola\\D0017E\\Labb3\\3b\\Plot\\circle.tga",width,height,image,24)!=TGA_OK) {
		goto error_free;
	}

exit:
	free(image); /* Free memory allocated by tga_read() */
	return 0;
	
error_free:
	free(image);
	
error:
	return -1;	
}

/* EOF */