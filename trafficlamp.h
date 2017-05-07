#ifndef TRAFFICLAMP_H
#define TRAFFICLAMP_H


class TrafficLamp(){
    private:
        float GreenLightTimer;
        float RedLightTimer;
        bool Simultaneous;
    public:
        float GetGreenLightTimer;
        void SetGreenLightTimer;
        float GetRedLightTimer;
        void SetRedLightTimer;
        float ComputeCapacity;
}

#endif // TRAFFICLAMP_H
