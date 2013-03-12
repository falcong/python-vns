
%ModuleCode
#include <vns/pipes.h>
%End

class Pipes : public DriverModel {

%TypeHeaderCode
#include <vns/pipes.h>
using namespace vns;
%End

	Pipes(const DriverInfo* driver);
	virtual ~Pipes();

public:
    float getDesiredSpeed() const;
    float accel(const LaneObject* v, const LaneObject* fv=0);
    float accel(const LaneObject* v, float stopPos);
    float accel(const LaneObject* v, float dist, float speed, float accel);
    float updatePositionAndSpeed(float dt,float lanePos,float &speed,float &accel);
};