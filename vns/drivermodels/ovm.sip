
%ModuleCode
#include <vns/ovm.h>
%End

class OVM : public DriverModel {

%TypeHeaderCode
#include <vns/ovm.h>
using namespace vns;
%End

	OVM(const DriverInfo* driver);
	virtual ~OVM();

public:
    float getDesiredSpeed() const;
    float accel(const LaneObject* v, const LaneObject* fv=0);
    float accel(const LaneObject* v, float stopPos);
    float accel(const LaneObject* v, float dist, float speed, float accel);
    float updatePositionAndSpeed(float dt,float lanePos,float &speed,float &accel);
};