
%ModuleCode
#include <vns/drivermodel.h>
%End

class DriverModel {

%TypeHeaderCode
#include <vns/drivermodel.h>
using namespace vns;
%End

public:

	static const float NUMBER_OF_MODULES;
	enum Type {INVALID=-1,IDM=0,EIDM=1,GIPPS=2,KRAUSS=3,NEWELL=4,OVM=5,FVDM=6,KKW=7,NAGEL=8,PIPES=9};

public:
	DriverModel();
	DriverModel(const DriverInfo* driver);
	virtual ~DriverModel();

	enum LaneChangeDecision {None,StayInLane,OptionalChangeToLeft,OptionalChangeToRight,MandatoryChangeToLeft,MandatoryChangeToRight,MandatoryToStayInLane};

    void setSpeedLimit(float speed);

    virtual float getDesiredSpeed() const = 0;
    virtual float accel(const LaneObject* v, const LaneObject* fv=0) = 0;
    virtual float accel(const LaneObject* v, float stopPos) = 0;
    virtual float accel(const LaneObject* v, float dist, float speed, float accel) = 0;
    virtual float updatePositionAndSpeed(float dt, float lanePos, float& speed, float& accel) = 0;

	/*
    virtual bool isLaneChangeAllowed();
    LaneChangeDecision makeLaneChangeDecision( Vehicle* me, Simulator* simulator);
    virtual float laneChangeAccelerationBalance(Vehicle* vehicle, Lane* newLane);
    bool isSafeToChangeLane(Vehicle* me, Lane* newLane );
    LaneChangeDecision makeDecisionForEnteringVehicles(Vehicle* me);
    LaneChangeDecision checkForMandatoryLaneChanges(Vehicle* me);
    LaneChangeDecision checkForOptionalLaneChanges(Vehicle* me);
    bool isLaneAllowed(Vehicle* me, Lane* lane);

    virtual bool canInvertWay(LaneObject* car,Lane* reverseLane);
    */

    static DriverModel* newDriverModel( const DriverInfo* info );
    static DriverModel::Type getDriverModel(const char* modelName);
    static const char* getDriverModelName(DriverModel::Type type);

};