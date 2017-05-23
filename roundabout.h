#ifndef ROUNDABOUT_H
#define ROUNDABOUT_H

#include "road.h"


class Roundabout : public Road
{
    public:
        Roundabout();
        virtual ~Roundabout();
        void FindCapacity(float tempCapacity);
};

#endif // ROUNDABOUT_H
