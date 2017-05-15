#include "road.h"

road::road()
{
    roadLinePointX1 = 0;
    roadLinePointX2 = 0;
    roadLinePointY1 = 0;
    roadLinePointY2 = 0;
}

void road::setRoadLinePointX1(int value){
    roadLinePointX1 = value;
}

int road::getRoadLinePointX1(){
    return roadLinePointX1;
}

void road::setRoadLinePointX2(int value){
    roadLinePointX2 = value;
}

int road::getRoadLinePointX2(){
    return roadLinePointX2;
}
void road::setRoadLinePointY1(int value){
    roadLinePointY1 = value;
}
int road::getRoadLinePointY1(){
    return roadLinePointY1;
}
void road::setRoadLinePointY2(int value){
    roadLinePointY2 = value;
}
int road::getRoadLinePointY2(){
    return roadLinePointY2;
}
