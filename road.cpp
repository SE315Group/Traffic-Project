#include "road.h"

road::road()
{
    linePointX1 = 0;
    linePointX2 = 0;
    linePointY1 = 0;
    linePointY2 = 0;

}

void road::setLinePointX1(int value){
    linePointX1 = value;
}

int road::getLinePointX1(){
    return linePointX1;
}

void road::setLinePointX2(int value){
    linePointX2 = value;
}

int road::getLinePointX2(){
    return linePointX2;
}
void road::setLinePointY1(int value){
    linePointY1 = value;
}

int road::getLinePointY1(){
    return linePointY1;
}
void road::setLinePointY2(int value){
    linePointY2 = value;
}

int road::getLinePointY2(){
    return linePointY2;
}
