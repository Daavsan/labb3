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

void draw_line(PIXEL_RGB24 *image, const PIXEL_RGB24 *color, int width, int height, float x1,float y1, float x2, float y2) {
    int index,xtemp;
    float x[width], y[height]; // width, height
    int length_x = (x2-x1);

    double k = (y2-y1)/ ( (double ) (x2-x1) );
    double arr_x[length_x], arr_y[length_x];

    for (int i = 0; i <= length_x;  ){
        arr_x[i] = i;
        arr_y[i] = k*i+y1;
        i++;
    }

    if ((x2-x1) == 0 ){     //draws vertical lines
        for (int q = y1; q <= y2; q++) {
            if (x1 >= 0 && x1 <= width && y1 >= 0 && y1+q <= height) {
                index = (q * width) + x1;
                copy_pixel(&image[index], color);

            }
        }
    }

    else if ((y2-y1) == 0){ // draws horizontal lines
        if (x1 >= 0 && x2 <= width && y1 >= 0 && y2 <= height) {
            x[0] = x1;
            x[1] = x2;
            y[0] = y1;
            y[1] = y2;
            index = width * y1 + x1;
            copy_pixel(&image[index], color);
            index = width * y2 + x2;
            copy_pixel(&image[index], color);
        }

        for(int i = 1; i <= x2-x1 ; i++){
            if (x1 >= 0 && x1+i <= width && y1 >= 0 && y1 <= height) {
                xtemp = x1 + i - 1;

                if (interp1(x, y, i, xtemp, &y2) != 1) {
                    //realign the array

                    index = width * (y2) + xtemp;
                    copy_pixel(&image[index], color);
                    x[i] = x[i - 1];   //flyttar fram sista punkten
                    y[i] = y[i - 1];
                    x[i - 1] = x1 + i - 1; // sätter in en ny punkt
                    y[i - 1] = y2;
                }
            }
        }
    }

    else {      // draws all other lines
        for (int j = 0; j <= length_x; j++) {
            if (x1 >= 0 && x1+j < width && y1 >= 0 && y1+j < height) {
                index = (int) (width * round((arr_y[j]))) + x1 + j;
                copy_pixel(&image[index], color);
            }
        }
    }
}


int main(void) {

	int width;
	int height;
	PIXEL_RGB24 *image,red,green,blue;
    image = (PIXEL_RGB24 *) malloc(sizeof(PIXEL_RGB24) * width * height);

	red.R=255; red.G=0;     red.B=0;
	green.R=0; green.G=255; green.B=0;
	blue.R=0;  blue.G=0;    blue.B=255;

	if(tga_read("C:\\Users\\david\\Documents\\Skola\\D0017E\\Labb3\\3b\\Plot\\empty.tga",&width,&height,&image)!=TGA_OK) {
		goto error;
	}


	/* Draw a few circles on the image */
	draw_circle(image,width,height,width/2,height*0.75,width/7,&red);
	draw_circle(image,width,height,width/2,height/2,width/9,&green);
	draw_circle(image,width,height,width/2,height*0.25,width/7,&blue);
    draw_line(image, &blue, width, height,0,0,800,800);
    draw_line(image, &green, width, height,256,1,256,700);
    draw_line(image, &red, width, height,0,256,700,256);
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