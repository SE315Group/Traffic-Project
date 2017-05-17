#include "guimanager.h"
int guiManager::counter = -1;

guiManager::guiManager(QObject *parent) : QObject(parent)
{

}

double guiManager::trashHold(int currentX, int currentY, int vectorX, int vectorY)
{
    double distanceX = vectorX-currentX ;
    double distanceY = vectorY-currentY ;
    double distanceOfTwoPoints = sqrt((distanceX*distanceX) + (distanceY*distanceY));
    qDebug () << "TrashHold:" << distanceOfTwoPoints;
    return distanceOfTwoPoints;

}

void guiManager::getPointsFromPaintMouseAreaForRoad1(int x, int y)
{
    int i = 0;
    double trashHoldValue = 10;
    road *newObject = new road();
    newObject->setLinePointX1(x);
    newObject->setLinePointY1(y);
    qDebug() << "RoadX1" << newObject->getLinePointX1() << "RoadY1" << newObject->getLinePointY1();
    counter++;
    roadVector.append(newObject);
    for(i=0 ; i< roadVector.size()-1 ; i++){
        qDebug() << "i:" << i;
        if(trashHoldValue>=trashHold(roadVector[counter]->getLinePointX1(),roadVector[counter]->getLinePointY1(),roadVector[i]->getLinePointX1(),roadVector[i]->getLinePointY1()))
        {
            roadVector[counter]->setLinePointX1(roadVector[i]->getLinePointX1());
            roadVector[counter]->setLinePointY1(roadVector[i]->getLinePointY1());
            qDebug() << "RoadVectorX1" << roadVector[counter]->getLinePointX1() << "RoadVectorY1" << roadVector[counter]->getLinePointY1();
    }
        else if(trashHoldValue>=trashHold(roadVector[counter]->getLinePointX1(),roadVector[counter]->getLinePointY1(),roadVector[i]->getLinePointX2(),roadVector[i]->getLinePointY2()))
        {
            roadVector[counter]->setLinePointX1(roadVector[i]->getLinePointX2());
            roadVector[counter]->setLinePointY1(roadVector[i]->getLinePointY2());
        }
}
    emit passPointsToPaintMouseAreaRoad1(roadVector[counter]->getLinePointX1(),roadVector[counter]->getLinePointY1());
}


void guiManager::getPointsFromPaintMouseAreaForRoad2(int x, int y)
{
    int i = 0;
    double trashHoldValue = 10;
    roadVector[counter]->setLinePointX2(x);
    roadVector[counter]->setLinePointY2(y);
    qDebug() << "RoadX2" << roadVector[counter]->getLinePointX2() << "RoadY2" << roadVector[counter]->getLinePointY2() << "size" << roadVector.size();
    for(i=0 ; i< roadVector.size()-1 ; i++)
    {
        if(trashHoldValue>=trashHold(roadVector[counter]->getLinePointX2(),roadVector[counter]->getLinePointY2(),roadVector[i]->getLinePointX2(),roadVector[i]->getLinePointY2()))
        {
            roadVector[counter]->setLinePointX2(roadVector[i]->getLinePointX2());
            roadVector[counter]->setLinePointY2(roadVector[i]->getLinePointY2());
            qDebug() << "RoadVectorX2" << roadVector[counter]->getLinePointX2() << "RoadVectorY2" << roadVector[counter]->getLinePointY2();
    }
        else if(trashHoldValue>=trashHold(roadVector[counter]->getLinePointX2(),roadVector[counter]->getLinePointY2(),roadVector[i]->getLinePointX1(),roadVector[i]->getLinePointY1()))
        {
            roadVector[counter]->setLinePointX2(roadVector[i]->getLinePointX1());
            roadVector[counter]->setLinePointY2(roadVector[i]->getLinePointY1());
        }
}
    emit passPointsToPaintMouseAreaRoad2(roadVector[counter]->getLinePointX2(),roadVector[counter]->getLinePointY2());
}

