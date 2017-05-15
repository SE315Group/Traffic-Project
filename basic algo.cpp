#include <iostream>
#include <stdlib.h>
using namespace std;

    int main (){

     float distance, minute, spawnPerMinute, density, cars, passingTime, 
stuckTime, timeCounter;

     cout<<"Please enter the distance with km"<<endl;
     cin>>distance;

     cout<<"Please enter the spawn per minute and how many minutes"<<endl;
     cin>>spawnPerMinute;
     cin>>minute;

     cars = (minute*spawnPerMinute);
     density = (cars * 5) / (distance * 1000);
     passingTime = minute + (distance / 50) * 60;
     stuckTime = ((distance * 1000) / (spawnPerMinute*5)) + 0.01;

     if(density > 1){
         cout<<" Traffic Stucked at "<<stuckTime<<" until the "<<passingTime<<endl;
     }
     else {
         cout<<"The traffic density is "<<(density*100)<<"%"<<endl;
     }
     
     timeCounter = 0;
     
     while (timeCounter!=passingTime*60){
     	timeCounter ++;         
};
}
	
	


