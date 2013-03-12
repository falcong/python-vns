
%ModuleCode
#include <vns/gipps.h>
%End

class Gipps : public DriverModel {

%TypeHeaderCode
#include <vns/gipps.h>
using namespace vns;
%End

	Gipps(const DriverInfo* driver);
	virtual ~Gipps();

public:
    float getDesiredSpeed() const;
    float accel(const LaneObject* v, const LaneObject* fv=0);
    float accel(const LaneObject* v, float stopPos);
    float accel(const LaneObject* v, float dist, float speed, float accel);
    float updatePositionAndSpeed(float dt,float lanePos,float &speed,float &accel);
};