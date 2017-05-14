#include "road.h"

road::road(QObject *parent) : QObject(parent)
{
    linePointX1 = 0;
    linePointX2 = 0;
    linePointY1 = 0;
    linePointY2 = 0;
    roadID++;
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

void road::getPointsFromPaintMouseArea(int x,int y){
   qDebug() << "x1" << x << "y1"<< y;
    setLinePointX1(x);
    setLinePointY1(y);
    //calculateTrashHold()
    emit passPointsToPaintMouseArea(getLinePointX1(),getLinePointY1());
    qDebug() << "x1" << getLinePointX1() << "y1" << getLinePointY1();
}

double road::calculateTrashHold(int x,int y){
        /*calculateTrashHold will find the closest destanation of the line points in the vector. But I couldn't implement the vector.
        I want to insert the Road objects while i am creating them. I want to do it in constructor. I couldn't manage to find a way to
        do it.*/
}

