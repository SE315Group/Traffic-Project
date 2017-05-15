#ifndef ROAD_H
#define ROAD_H
#include "QVector"


class road
{
public:
    road();
    //road static *arayOfRoads[99];
    void setRoadLinePointX1(int value);
    int getRoadLinePointX1(void);
    void setRoadLinePointX2(int value);
    int getRoadLinePointX2(void);
    void setRoadLinePointY1(int value);
    int getRoadLinePointY1(void);
    void setRoadLinePointY2(int value);
    int getRoadLinePointY2(void);
private:
    int roadLinePointX1;
    int roadLinePointX2;
    int roadLinePointY1;
    int roadLinePointY2;
};

#endif // ROAD_H
