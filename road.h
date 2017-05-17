#ifndef ROAD_H
#define ROAD_H


class road
{
public:
    road();
    void setLinePointX1(int value);
    int getLinePointX1(void);
    void setLinePointX2(int value);
    int getLinePointX2(void);
    void setLinePointY1(int value);
    int getLinePointY1(void);
    void setLinePointY2(int value);
    int getLinePointY2(void);
private:
    int linePointX1;
    int linePointX2;
    int linePointY1;
    int linePointY2;
};

#endif // ROAD_H
