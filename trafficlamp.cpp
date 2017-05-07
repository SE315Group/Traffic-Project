#include "trafficlamp.h"

float GetGreenLightTimer(){
    return GreenLightTimer;
}
void SetGreenLightTimer(float value){
    GreenLightTimer=value;
}
float GetRedLightTimer(){
    return RedLightTimer;
}
void SetRedLightTimer(float value){
    RedLightTimer=value;
}
float ComputeCapacity (){
    tempCapacity= tempCapacity-(GetRedLightTimer()*10);
    return Getcapacity();
}
bool Simultaneous(){
    // that will be filled later
}
