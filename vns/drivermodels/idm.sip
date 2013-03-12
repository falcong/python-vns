
%ModuleCode
#include <vns/idm.h>
%End

class IDM : public DriverModel {

%TypeHeaderCode
#include <vns/idm.h>
using namespace vns;
%End

	IDM(const DriverInfo* driver);
	virtual ~IDM();

public:
    float getDesiredSpeed() const;
    float accel(const LaneObject* v, const LaneObject* fv=0);
    float accel(const LaneObject* v, float stopPos);
    float accel(const LaneObject* v, float dist, float speed, float accel);
    float updatePositionAndSpeed(float dt,float lanePos,float &speed,float &accel);
};