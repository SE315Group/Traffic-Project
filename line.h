#ifndef LINE_H
#define LINE_H

#include <QObject>
#include <QDebug>
#include "road.h"
#include <QVector>

class line : public QObject
{
    Q_OBJECT
public:
    explicit line(QObject *parent = 0);
    road transferObject;
    road static *arayOfRoads[];
    int static roadIDCounter;
    void setLinePointX1(int value);
    int getLinePointX1(void);
    void setLinePointX2(int value);
    int getLinePointX2(void);
    void setLinePointY1(int value);
    int getLinePointY1(void);
    void setLinePointY2(int value);
    int getLinePointY2(void);
    road *newObject;
private:
    int linePointX1;
    int linePointX2;
    int linePointY1;
    int linePointY2;
signals:
   void passPointsToPaintMouseArea(int x,int y);
public slots:
   void getPointsFromPaintMouseArea(int x,int y);
   void getRoadCreator(bool value);

};

#endif // LINE_H
