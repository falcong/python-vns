
%ModuleCode
#include <vns/vehiclefactory.h>
%End

class VehicleFactory {

%TypeHeaderCode
#include <vns/vehiclefactory.h>
using namespace vns;
%End

protected:

	virtual Vehicle* createVehicle(uint64 id,VehicleType type,VehicleModel model,const Path::Iterator& path,float width, float length,DriverModel* driver);
public:

	VehicleFactory();
	virtual ~VehicleFactory();

	static int32 getNumberOfVehicleTypes();
	static const char* fromVehicleType(VehicleType type);
	static VehicleType fromVehicleTypeName(const char* typeName);

};
