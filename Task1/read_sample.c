#include "tga.h"
void main(){
    //int tga_read(const char *file_name, int *width, int *height, PIXEL_RGB24 **pixelBuf)
    PIXEL_RGB24 *image;
    int width, height;
    tga_read("C:\\Users\\david\\Documents\\Skola\\D0017E\\Labb3\\3b\\D0017E_H20_Lab3_Files\\Task1\\sample.tga", &width, &height, &image);

    tga_write("C:\\Users\\david\\Documents\\Skola\\D0017E\\Labb3\\3b\\D0017E_H20_Lab3_Files\\Task1\\sample24bit.tga", width, height, image, 24);

}