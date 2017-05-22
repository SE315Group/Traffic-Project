#ifndef SOURCE_H
#define SOURCE_H

#include <Road.h>


class SOURCE
{	
	private:
		float avgSpeed;
		int time;
		float carPerMinute;
	public:
		float getAvgSpeed(){return avgSpeed;}
		void setAvgSpeed(float val){avgSpeed=val;}

		float getTime(){return time;}
		void setTime(int val){time=val;}
		
		float getCarPerMinute(){return carPerMinute;}
		void setCarPerMinute(float val){carPerMinute=val;}

		calculateCurrentCapacity(float tempCurrentCapacity){
			(carPerMinute*time);	
			
			
};

			
    
         }

};

#endif // SOURCE_H
