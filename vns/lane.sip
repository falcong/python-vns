
%ModuleCode
#include <vns/lane.h>
%End

class Lane /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/lane.h>
using namespace vns;
%End

public:
	static const int32 NoFlags;
	static const int32 ParkingLane;
	static const int32 BusLane;
	static const int32 StopSign;
	static const int32 YieldSign;
	static const int32 ChangeLaneToLeft;
	static const int32 ChangeLaneToRight;
	static const int32 NoTrafficLane;
	static const int32 Cars;
	static const int32 Trucks;
	static const int32 Buses;
	static const int32 Rails;
	static const int32 Bikes;
	static const int32 Pedestrians;
	static const int32 TaxiStand;

	void setFlags(int32 flgs);
	void addFlags(int32 flgs);
	void removeFlags(int32 flgs);
	bool hasFlag(int32 flg) const;
	bool hasFlags(int32 flgs) const;
	int32 getFlags() const;

protected:

    ~Lane();
/*
    class LaneSensor {
    public:
    	LaneSensor(Trigger* trig, float pos){ trigger = trig; lanePos = pos; };
    	~LaneSensor(){};
    	Trigger* trigger;
    	float lanePos;
    	LaneSensor* next;

    	friend class SensorIterator;
    };
*/

public:
/*
    class SensorIterator {
    private:
        LaneSensor* i;
    public:
        SensorIterator() : i(0);
        SensorIterator(LaneSensor* sensor) : i(sensor);
        Trigger* getTrigger();
        float getPosition() const;
        bool isValid() const;
        void next();
    };

    void addLaneSensor(Trigger* trigger, float pos);
    void removeLaneSensor(Trigger* trigger);
    void clearLaneSensors();
    Lane::SensorIterator getSensorIterator() const;
    */

    //Lane* getNextLane(const Road* nextRoad);
    const Lane* getNextLane(const Road* nextRoad) const;

    int32 getNumberOfConnections() const;
    const Road* getConnection(int32 i) const;
    bool addConnectionTo(const Road* road);
    bool removeConnectionTo(const Road* road);
    bool hasConnectionTo(const Lane* lane) const;
    bool hasConnectionTo(const Road* road) const;
    void clearConnections();
    bool allowsVehicle(const VehicleType& type) const;

    int getID() const;
    //Road* getRoad();
    const Road* getRoad() const;
    float getRoadCenterOffset() const;
    float getWidth() const;
    float getLength() const;
    float getLaneEnd() const;
    float getLaneStart() const;
    const Vec& getFirstPoint() const;
    const Vec& getLastPoint() const;
    const Vec& getFirstPointDirection() const;
    const Vec& getLastPointDirection() const;
    const Vec& getFirstPointNormal() const;
    const Vec& getLastPointNormal() const;
    float getMaximumSpeed() const;
    float getMinimumSpeed() const;
    void setMaximumSpeed(float maxSpeed);
    void setMinimumSpeed(float minSpeed);
    Way getWay() const;
    bool hasTrafficLight() const;
    //Light getTrafficLightColor() const;
    //void setTrafficLightColor(Light color);
    void setUserData(void* data);
    void* getUserData() const;

    Junction* getStartJunction();
    //const Junction* getStartJunction() const;
    Junction* getEndJunction();
    //const Junction* getEndJunction() const;
    RoadNetwork* getRoadNetwork();
    //const RoadNetwork* getRoadNetwork() const;
    Lane* getDrivingLaneOnLeft();
    Lane* getDrivingLaneOnRight();
    Lane* getSameWayDrivingLaneOnLeft();
    Lane* getSameWayDrivingLaneOnRight();
    Lane* getParkingLaneOnLeft();
    Lane* getParkingLaneOnRight();
    Lane* getNextLaneTo(const Lane* destLane);

    void getPositionPoint(Vec& pt, Vec& dir, Vec& perp, float pos) const;

    void setWidth(float width);
    void setLaneStart(float pos);
    void setLaneEnd(float pos);
    void setLaneStartOffset(float pos);
    void setLaneEndOffset(float pos);
    float getLaneEndOffset() const;
    float getLaneStartOffset() const;

    /*
     * LaneObjects
     */

    //Vehicle* getFirstVehicle();
    //Vehicle* getLastVehicle();
    const Vehicle* getFirstVehicle() const;
    const Vehicle* getLastVehicle() const;
    bool isFirstObject(const LaneObject *obj) const;
    bool isLastObject(const LaneObject *obj) const;
    const LaneObject* getFirstObject() const;
    const LaneObject* getLastObject() const;
    //LaneObject* getFirstObject();
    //LaneObject* getLastObject();
    int32 getNumberOfObjects() const;

    void objectsAround(float position, LaneObject*& previous, LaneObject*& next) const;

    bool canEnter(const LaneObject* obj) const;
    bool canEnter(float vehicleLength) const;
    //void updateObjectPosition(LaneObject* obj,float position);

/*
    class ObjectIterator {
    private:
        LaneObject* i;
    public:
        ObjectIterator():i(0);
        ObjectIterator(LaneObject *object):i(object);
        bool isValid() const;
        void next();
        void previous();
        LaneObject* getLaneObject();
    };

    Lane::ObjectIterator getFirstObjectIterator() const;
    Lane::ObjectIterator getLastObjectIterator() const;
    */

};