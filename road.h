#ifndef ROAD_H
#define ROAD_H

#include <QObject>
#include <QDebug>
#include <QVector>

class road : public QObject
{
    Q_OBJECT
public:
    explicit road(QObject *parent = 0);
    void setLinePointX1(int value);
    int getLinePointX1(void);
    void setLinePointX2(int value);
    int getLinePointX2(void);
    void setLinePointY1(int value);
    int getLinePointY1(void);
    void setLinePointY2(int value);
    int getLinePointY2(void);
    double calculateTrashHold(int x,int y);
    int roadID=-1;
    bool roadCaller=false;

 signals:
    void passPointsToPaintMouseArea(int x,int y);
 public slots:
    void getPointsFromPaintMouseArea(int x,int y);
 private:
    int linePointX1;
    int linePointX2;
    int linePointY1;
    int linePointY2;

};

#endif // ROAD_H
