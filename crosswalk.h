#ifndef CROSSWALK_H
#define CROSSWALK_H

class CrossWalk{
    private:
        int crosswalkDensity;  //User will set
        float capacity;
    public:
        CrossWalk();

        int GetcrosswalkDensity();
        void SetcrosswalkDensity(int val);
        float Getcapacity();
        void Setcapacity(float val);
        float ComputeCapasity();
};

#endif // CROSSWALK_H
