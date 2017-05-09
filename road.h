#ifndef ROAD_H
#define ROAD_H


class Road{
    private:
        int roadID;// probably needs a global variable for counting, look into the constructor
        int laneNum;
        int direction;
        float distance;
        float capacity;
        int lampCounter;
        int crosswalkCounter;
        int key_x;
        int key_y;
    public:
        Road();
        virtual ~Road();
        int GetroadID();
        void SetroadID(int val);
        int GetlaneNum();
        void SetlaneNum(int val);
        int Getdirection();
        void Setdirection(int val);
        float Getdistance();
        void Setdistance(float val);
        float Getcapacity();
        void Setcapacity(float val);
        int GetlampCounter();
        void SetlampCounter(int val);
        int GetcrosswalkCounter();
        void SetcrosswalkCounter(int val);
        int Getkey_x();
        void Setkey_x(int val);
        int Getkey_y();
        void Setkey_y(int val);
        float ComputeCapacity(float tempCapacity);
        bool keyMatchUp(int val_x,int val_y);
};

#endif // ROAD_H
