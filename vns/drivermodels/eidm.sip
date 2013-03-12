
%ModuleCode
#include <vns/eidm.h>
%End

class EIDM : public DriverModel {

%TypeHeaderCode
#include <vns/eidm.h>
using namespace vns;
%End

	EIDM(const DriverInfo* driver);
	virtual ~EIDM();

public:
    float getDesiredSpeed() const;
    float accel(const LaneObject* v, const LaneObject* fv=0);
    float accel(const LaneObject* v, float stopPos);
    float accel(const LaneObject* v, float dist, float speed, float accel);
    float updatePositionAndSpeed(float dt,float lanePos,float &speed,float &accel);
};