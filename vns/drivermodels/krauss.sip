
%ModuleCode
#include <vns/krauss.h>
%End

class Krauss : public DriverModel {

%TypeHeaderCode
#include <vns/krauss.h>
using namespace vns;
%End

	Krauss(const DriverInfo* driver);
	virtual ~Krauss();

public:
    float getDesiredSpeed() const;
    float accel(const LaneObject* v, const LaneObject* fv=0);
    float accel(const LaneObject* v, float stopPos);
    float accel(const LaneObject* v, float dist, float speed, float accel);
    float updatePositionAndSpeed(float dt,float lanePos,float &speed,float &accel);
};