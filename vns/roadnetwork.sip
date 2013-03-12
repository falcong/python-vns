
%ModuleCode
#include <vns/roadnetwork.h>
%End

class RoadNetwork {

%TypeHeaderCode
#include <vns/roadnetwork.h>
using namespace vns;
%End

public:

    RoadNetwork();
    RoadNetwork(const char* file);
    ~RoadNetwork();

    const char* getVersion() const;

/*
    TrafficLightController* createTrafficLightController(TrafficLightController::Type type);
    int32 getNumberOfTrafficLights() const;
    const TrafficLightController* getTrafficLightController(int32 id) const;
    TrafficLightController* getTrafficLightController(int32 id);
    void removeTrafficLightController(int32 id);
    void removeTrafficLightController(TrafficLightController* controller);
    void clearTrafficLights();
    */

    bool save(const char* file);
    bool load(const char* file);
    void clear();

    bool join(Junction* junctionA, Junction* junctionB);
    bool join(Road* roadA, Road* roadB);
    bool join(Road* road, Junction* junction);
    void disconnect(Road* road, Junction* junction);
    void disconnectAll(Junction* junction);
    void moveToFront(Road* road);
    Junction* splitRoad(Road* road, int32 splitPoint);
    Road* mergeRoads(Junction* junction);

    const BBox& getExtents() const;

    Road* getNearestRoad( const Vec& pt, int8 roadType=-1);
    Road* getPointAndRoadWithin(Vec& pt, double radius, int32& pointIndex, int32 exceptRoad = -1);

    Road* getRoad(int32 rid);
    //const Road* getRoad(int32 rid) const;
    Road* getRoad(const Vec& pt);
    int32 getNumberOfRoads() const;
    Lane* getLane(int32 roadID,int8 laneID);

    Junction* getJunction(const Vec& point);
    Junction* getJunction(const BBox& bb);
    Junction* getJunction(int32 jid);
    //const Junction* getJunction(int32 jid) const;
    int32 getNumberOfJunctions() const;

    Road* createRoad(PolyLine* polyline, int32 forwardLanes=1, int32 reverseLanes=0);
    Road* createRoad(const Vector<Vec>& points, Road* road);
    bool isValidRoad(const Road* road);
    bool isValidJunction(const Junction* junction);
    bool isValidLane(const Lane* lane);
    void deleteRoad(Road* road);
    void deleteRoad(int32 roadID);
    //void deleteRoads(Vector<int32>& roadIDs);

    void setAutomaticConnectivityGeneration(bool value);
    void generateRoadsConnectivity();
    void setOffset(const Vec& offset);
    const Vec& getOffset() const;

};