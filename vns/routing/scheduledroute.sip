
%ModuleCode
#include <vns/scheduledroute.h>
%End

class ScheduledRoute /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/scheduledroute.h>
using namespace vns;
%End

private:
	~ScheduledRoute();

public:

	double getScheduledTime() const;
	Path* getPath();
	//const Path* getPath() const;
    VehicleType getVehicleType() const;
    void setVehicleType(VehicleType vType);
    int32 getDriver() const;
    void setDriver(int32 driverID);
};