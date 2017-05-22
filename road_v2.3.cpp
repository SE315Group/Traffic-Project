#include "road.h"

road::road()
{
    roadID=roadCounter;//Global variable
	matchedRoadCounter==0;
}

		int road::GetroadID(){ return roadID; }
		
        void road::SetroadID(int val){ roadID = val; }
        
        float road::Getdistance() { return distance; }
        
        void road::Setdistance(float val) { distance = val; }
        
        float road::Getminute() { return minute; }
        
        void road::Setminute(float val) { minute = val; }
        
        float road::GetspawnPerMinute() { return spawnPerMinute; }
        
        void road::SetspawnPerMinute(float val) { spawnPerMinute = val; }
        
        float road::Getdensity() { return density; }
        
        void road::Setdensity(float val) { density = val; }
        
        float road::Getcars() { return cars; }
        
        void road::Setcars(float val) { cars = val; }
        
        float road::GetpassingTime() { return passingTime; }
        
        void road::SetpassingTime(float val) { passingTime = val; }
        
        float road::GetstuckTime() { return stuckTime; }
        
        void road::SetstuckTime(float val) { stuckTime = val; }
        
        float road::GettimeCounter() { return timeCounter; }
        
        void road::SettimeCounter(float val) { timeCounter = val; }
        
        int road::Getx1() { return x1; }
        
        void road::Setx1(int val) { x1 = val; }
        
        int road::Getx2() { return x2; }
        
        void road::Setx2(int val) { x2 = val; }
        
        int road::Gety1() { return y1; }
        
        void road::Sety1(int val) { y1 = val; }
        
        int road::Gety2() { return y2; }
        
        void road::Sety2(int val) { y2 = val; }
        
        int Getx1Flag() { return x1Flag; }
        
        void Setx1Flag() { x1Flag = True; }
        
        void road::keyMatch(road temproad) {
        	if(temproad.GetroadID()==roadID)
        		return;
			if(temproad.x1==road.x1 && temproad.y1==road.y1 || temproad.x2==road.x1 && temproad.y2==road.y1){
				matchedRoadsIDs[matchRoadCounter]==temproad.GetroadID();
				matchedRoadCounter++;
			}
		}
		
        
