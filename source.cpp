#include "source.h"

Source::Source(){
	carPerMinute=0; }

float avgSpeed::getAvgSpeed(){
	return avgSpeed; }
void avgSpeed::setAvgSpeed(float val){
	avgSpeed=val; }
int time::getTime(){
	return time; }
void time::setTime(int val){
	time=val; }
float carPerMinute::getCarPerMinute(){
	return carPerMinute; }
void carPerMinute::setCarPerMinute(float val){
	carPerMinute=val; }



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