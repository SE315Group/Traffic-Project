#include "roundabout.h"


Roundabout::Roundabout(){}
Roundabout::~Roundabout(){}
void Roundabout::FindCapacity(float tempCapacity){
    tempCapacity=(Getdistance()*GetlineNum()*3/5);
    tempCapacity=tempCapacity-(tempCapacity*10/100)*GetcrosswalkCounter();
    tempCapacity=tempCapacity-(tempCapacity*10/100)*GetlampCounter();
    Setcapacity(tempCapacity);
    return; }
