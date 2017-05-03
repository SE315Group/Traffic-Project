#include "crosswalk.h"

CrossWalk::CrossWalk(){
    crosswalkDensity=0; }

int CrossWalk::GetcrosswalkDensity(){
    return crosswalkDensity; }
void CrossWalk::SetcrosswalkDensity(int val){
    crosswalkDensity=val; }
float CrossWalk::Getcapacity(){
    return capacity; }
void CrossWalk::Setcapacity(float val){
    capacity=val; }
float CrossWalk::ComputeCapasity(){
    float tempCapacity=GetcrosswalkDensity()*10;     //Could be changed
    Setcapacity(tempCapacity);
    return Getcapacity(); }
