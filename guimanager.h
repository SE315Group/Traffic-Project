#ifndef GUIMANAGER_H
#define GUIMANAGER_H
#include "road.h"
#include <QObject>
#include <QVector>
#include <cmath>
#include <QDebug>

class guiManager : public QObject
{
    Q_OBJECT
public:
    explicit guiManager(QObject *parent = 0);
    QVector<road*> roadVector;
    bool checkSecondPressed;
    static int counter;
    double trashHold(int currentX,int currentY,int vectorX,int vectorY);
signals:
    void passPointsToPaintMouseAreaRoad1(int x,int y);
    void passPointsToPaintMouseAreaRoad2(int x,int y);
public slots:
    void getPointsFromPaintMouseAreaForRoad1(int x,int y);
    void getPointsFromPaintMouseAreaForRoad2(int x,int y);
};

#endif // GUIMANAGER_H
