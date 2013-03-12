
%ModuleCode
#include <vns/road.h>
%End

class Road /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/road.h>
using namespace vns;
%End

public:

	enum Type {
		Undefined = 0, Motorway,MotorwayLink,Street,Trunk,TrunkLink,Primary,Residential,
		BusGuideway,Service,Parking,Fuel,Toll,Footway,Cicleway,Steps,Railway,Monorail
	};

protected:

    ~Road();

public:

	static const char* fromType(Road::Type type);
	static Road::Type fromTypeName(const char* name);

	void setType(Road::Type type);
	Road::Type getType() const;
    const BBox& getBBox() const;
    int32 getID() const;
    float getWidth() const;
    float getWidth(Way way) const;
    void setUserData(void* data);
    void* getUserData() const;
    float getLength() const;
    int32 getNumberOfPoints() const;
    const Vec& getPoint(int32 i) const;
    const Vec& getNormal(int32 i) const;
    float getLengthUntilPoint(int32 i) const;
    Vec getDirection(int32 i) const;
    Vec getLastPointDirection(Way way = Forward) const;
    Vec getFirstPointDirection(Way way = Forward) const;
    Vec getLastPointDirection(const Junction* junction) const;
    Vec getFirstPointDirection(const Junction* junction) const;
    const Vec& getFirstPoint(Way way = Forward) const;
    const Vec& getLastPoint(Way way = Forward) const;
    RoadNetwork* getRoadNetwork();
    //const RoadNetwork* getRoadNetwork() const;
    PolyLine* getPolyLine();
    //const PolyLine* getPolyLine() const;
    bool contains(const Vec& pt) const;
    void setRoadOffset(float offset);
    float getRoadOffset() const;

    Lane* getLane(int laneID);
    //const Lane* getLane(int laneID) const;
    int getNumberOfLanes() const;
    int getNumberOfForwardLanes() const;
    int getNumberOfBackwardLanes() const;

    bool isSourceRoad(Way way) const;
    bool isSinkRoad(Way way) const;
    void setRightParking(bool rightParking);
    void setLeftParking(bool leftParking);
    void setEndCrossWalk(bool crossWalk);
    void setStartCrossWalk(bool crossWalk);
    void setMaximumSpeed(float speed);
    void setMinimumSpeed(float speed);
    
    bool hasParking(Way way);

    Lane* createLane(Way way = Forward, float width=3.0);
    void removeLane(int8 laneID);

    bool allowsVehicle(const VehicleType& type,const Way& way=Forward) const;
    
    Junction* getEndJunction(Way way = Forward);
    Junction* getStartJunction(Way way = Forward);
    //const Junction* getEndJunction(Way way = Forward) const;
    //const Junction* getStartJunction(Way way = Forward) const;
    float getRoadStart(Way way = Forward) const;
    float getRoadEnd(Way way = Forward) const;

    bool hasRightParking(Way way = Forward) const;
    bool hasLeftParking(Way way = Forward) const;
    Lane* getRightParking(Way way = Forward) const;
    Lane* getLeftParking(Way way = Forward) const;

    bool hasStartCrossWalk(Way way = Forward) const;
    bool hasEndCrossWalk(Way way = Forward) const;


    void setPoint(int32 i, const Vec& point);
    bool insertPoint(int32 i, Vec point);
    bool removePoint(int32 i);

    bool hasLanes(Way way=Forward) const;


    bool hasConnectionTo(const Road* road) const;
    bool hasConnectionTo(Way way,const Road* road) const;
    bool hasConnectionTo(const Lane* lane) const;
    void clearConnections(Way way);
    void clearAllConnections();


    void getStartPoint(Vec& pt, Vec& dir, Vec& perp, Way way = Forward) const ;
    void getEndPoint(Vec& pt, Vec& dir, Vec& perp, Way way = Forward) const ;
    void getPositionPoint(Vec& pt, Vec& dir, Vec& perp, double pos, Way way = Forward) const;

    void setMaximumCarsInQueue(Way, uint32 v);
    uint32 getNumberOfCarsInQueue(Way way) const;
    uint32 getNumberOfCarsInQueue() const;
    uint32 getMaximumCarsInQueue(Way way) const;

    bool canInvertWay(Way way) const;


};