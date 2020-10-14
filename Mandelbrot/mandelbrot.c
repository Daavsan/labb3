/*
 *  mandelbrot.c
 *  
 *  Created by Fredrik Sandin on 21/08/12.
 */

#include "tga.h"


/*!
	Simple Mandelbrot renderer.
 
	Documentation needs to be completed.
	Zooming into the set is presently not supported.
*/
void mandelbrot_color(int x, int y, int width, int height, PIXEL_RGB24 *color, int max_it) {

    int i = 0;
    double temp;
    double dx = 0, x0 = -2.0 + 3.0 * x / width;
    double dy = 0, y0 = -1.0 + 2.0 * y / height;

    while (dx * dx + dy * dy < 4 && i++ < max_it) {
        temp = dx * dx - dy * dy + x0;
        dy = 2.0 * dx * dy + y0;
        dx = temp;
    }
    double s = i;
    s *= 255.0 / max_it;




    /* Purple/magenta colors */
    //color->R = color->B = s; color->G = 0;

    /*
    color->R = 5*s;
    color->B = s;
    color->G = /2;
    */

    color->R = s*s;
    color->B = s;
    color->G = 1/s;


    /* Greyscale */
    /*color->R = color->B = color->G = 255 - s;*/

}

int main(void) {

    int x, y, master;
    const long int width = 50*100, height = 50*256;
    //image = malloc( sizeof( PIXEL_RGB24 ) * width * height );
    //PIXEL_RGB24 image[(int) malloc(width * height)], color;
    PIXEL_RGB24 *image, color;
    image = (PIXEL_RGB24 *) malloc(sizeof(PIXEL_RGB24) * width * height);
    /*
    Complete this code so that the output TGA file gets some nice colors.
    Hint: you need to loop over all 1024*768 pixels and color each of them.
    */
    master = 0;

    for (x = 0; x < width;) {
        for (y = 0; y < height;) {
            mandelbrot_color(x, y, width, height, &color, 50);
            copy_pixel(&image[master], &color);
            master++;
            y++;
        }
        x++;
    }


    if (tga_write("C:\\Users\\david\\Documents\\Skola\\D0017E\\Labb3\\3b\\Mandelbrot\\mandelbrot.tga", width, height,
                  image, 24) != TGA_OK) {
        return -1; /* ERROR OCCURRED */
    }

    free(image);
    return 0; /* OK */

}

/* EOF */