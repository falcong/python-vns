
%ModuleCode
#include <vns/fvdm.h>
%End

class FVDM : public DriverModel {

%TypeHeaderCode
#include <vns/fvdm.h>
using namespace vns;
%End

	FVDM(const DriverInfo* driver);
	virtual ~FVDM();

public:
    float getDesiredSpeed() const;
    float accel(const LaneObject* v, const LaneObject* fv=0);
    float accel(const LaneObject* v, float stopPos);
    float accel(const LaneObject* v, float dist, float speed, float accel);
    float updatePositionAndSpeed(float dt,float lanePos,float &speed,float &accel);
};