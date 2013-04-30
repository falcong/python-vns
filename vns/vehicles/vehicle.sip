
%ModuleCode
#include <vns/vehicle.h>
%End

class Vehicle : public LaneObject /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/vehicle.h>
using namespace vns;
%End


public:

	static const uint8 MovingInLane;
	static const uint8 ApprochingJunction;
	static const uint8 MovingInJunction;
	static const uint8 ChangingLane;
	static const uint8 Parked;
	static const uint8 Removed;
	static const uint8 Stopped;
	static const uint8 StoppedInTaxiStand;
	static const uint8 ChangingWay;
	static const uint8 Initialising;
	static const uint8 LeavingParking;
	static const uint8 EnteringParking ;
	
    uint64 getID() const;
    VehicleModel getVehicleModel() const;
    VehicleType getVehicleType() const;
    float getSpeed() const;
    float getAccel() const;
    void setUserData(void* data);
    void* getUserData() const;
    SIP_PYOBJECT getNetworkNode() const [void* () ];
    void setNetworkNode(SIP_PYOBJECT node) [void (void *data)];
    //DriverModel* getDriverModel();
    const DriverModel* getDriverModel() const;
    bool isBraking() const;
	uint8 getNumberOfPassengers() const;
	void setNumberOfPassengers(uint8 p);
	void setLimitOfPassengers(uint8 l);
	uint8 getLimitOfPassengers() const;
    float getAccelTo(const LaneObject* obj) const;
    uint32 getState() const;


	bool isInProcessOfLaneChange() const;
	bool isGivingWay() const;
	bool isCrossing() const;
	double getJunctionEnteringTime() const;

	//Vehicle* getVehicleInFront();
    const Vehicle* getVehicleInFront() const;
    //Vehicle* getVehicleBehind();
    const Vehicle* getVehicleBehind() const;
    //Road* getNextRoad();
    const Road* getNextRoad() const;
    bool requiresChangeWay() const;
    //const PathStop* getRoadStop() const;

    //virtual vns::Light getTrafficLightColor() const;
    const Lane* getNextLane() const;

    /* Path */
    /*
    const vns::Path* getPath() const;
    const Path::Iterator& getPathIterator() const;
    bool updatePath(Path* path);
*/
    static Vehicle* fromObject(Object*);

protected:
    virtual void simulationStep(Simulator* simulator);
    virtual void updateStep(Simulator* simulator);

};