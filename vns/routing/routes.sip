
%ModuleCode
#include <vns/routes.h>
%End

class Routes {

%TypeHeaderCode
#include <vns/routes.h>
using namespace vns;
%End

public:

    Routes(RoadNetwork* network);
    Routes(RoadNetwork* network,const char* fileName);
    ~Routes();

    int32 registerDriver(const DriverInfo& driver);
    const DriverInfo* getDriver(int32 driverID) const;
    const DriverInfo* getDefaultDriver(VehicleType vehicleID) const;

    int32 addPath(Path* path /Transfer/);
    int32 getNumberOfPaths() const;
    Path* getPath(int32 pathID);
    //const Path* getPath(int32 pathID) const;

    Route* getRoute(int32 routeID);
    //const Route* getRoute(int32 routeID) const;
    int32 addRoute(int32 pathID, double interval,VehicleType vType=0,int32 driverID=-1,double startTime=0.0,double endTime=0.0);
    void deleteRoute(int32 routeID);
    int32 getNumberOfRoutes() const;
    void clearRoutes();

    int32 addScheduledRoute(int32 pathID,double depart,VehicleType vType=0,int32 driverID=-1);
    void deleteScheduledRoute(int32 routeID);
    int32 getNumberOfScheduledRoutes() const;
    ScheduledRoute* getScheduledRoute(int32 routeID);
    //const ScheduledRoute* getScheduledRoute(int32 routeID) const;
    void clearScheduledRoutes();
    void clear();

    bool load(const char* fileName);
    bool save(const char* fileName);

    RoadNetwork* getRoadNetwork();
    //const RoadNetwork* getRoadNetwork() const;

};