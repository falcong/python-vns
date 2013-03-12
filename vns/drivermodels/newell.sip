
%ModuleCode
#include <vns/newell.h>
%End

class Newell : public DriverModel {

%TypeHeaderCode
#include <vns/newell.h>
using namespace vns;
%End

	Newell(const DriverInfo* driver);
	virtual ~Newell();

public:
    float getDesiredSpeed() const;
    float accel(const LaneObject* v, const LaneObject* fv=0);
    float accel(const LaneObject* v, float stopPos);
    float accel(const LaneObject* v, float dist, float speed, float accel);
    float updatePositionAndSpeed(float dt,float lanePos,float &speed,float &accel);
};