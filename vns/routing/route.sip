
%ModuleCode
#include <vns/route.h>
%End

class Route /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/route.h>
using namespace vns;
%End

private:
	~Route();

public:

	Path* getPath();
    //const Path* getPath() const;
    VehicleType getVehicleType() const;
    void setVehicleType(VehicleType vType);
    double getInterval() const;
    double getStartTime() const;
    double getEndTime() const;
    void setStartTime(double tt);
    void setEndTime(double tt);
    void setInterval(double interval);
    int32 getDriver() const;
    void setDriver(int32 driverID);

};