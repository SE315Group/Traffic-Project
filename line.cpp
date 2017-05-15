#include "line.h"
#include "road.h"

int line::roadIDCounter = 0;
road * line::arayOfRoads[99];

line::line(QObject *parent) : QObject(parent)
{
    linePointX1 = 0;
    linePointX2 = 0;
    linePointY1 = 0;
    linePointY2 = 0;
}

void line::getPointsFromPaintMouseArea(int x,int y){
   qDebug() << "x1" << x << "y1"<< y;
    setLinePointX1(x);
    setLinePointY1(y);
    //calculateTrashHold()
    emit passPointsToPaintMouseArea(getLinePointX1(),getLinePointY1());

}

void line::getRoadCreator(bool value)
{
    if(value){
        /*newObject = new road();
        newObject = &transferObject;
        qDebug() << "Yeni x1 " << newObject;
        */
        arayOfRoads[roadIDCounter] = new road();
        arayOfRoads[roadIDCounter] = &transferObject;
        roadIDCounter++;
        qDebug() << "bi önceki x1" << arayOfRoads[0]->getRoadLinePointX1();
    }
}

void line::setLinePointX1(int value){
    linePointX1 = value;
    transferObject.setRoadLinePointX1(value);
}

int line::getLinePointX1(){
    return linePointX1;
}

void line::setLinePointX2(int value){
    linePointX2 = value;
    transferObject.setRoadLinePointX2(value);
}

int line::getLinePointX2(){
    return linePointX2;
}
void line::setLinePointY1(int value){
    linePointY1 = value;
    transferObject.setRoadLinePointY1(value);
}

int line::getLinePointY1(){
    return linePointY1;
}
void line::setLinePointY2(int value){
    linePointY2 = value;
    transferObject.setRoadLinePointY2(value);
}

int line::getLinePointY2(){
    return linePointY2;
}
