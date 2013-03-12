
%ModuleCode
#include <vns/pathfinder.h>
%End

class PathFinder /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/pathfinder.h>
using namespace vns;
%End

public:
	PathFinder(RoadNetwork* network /TransferBack/, PathFinderHandler* handler /TransferBack/);
	virtual ~PathFinder();

	void setHandler(PathFinderHandler* handler /TransferBack/);

	Path* findPath(Road* from /TransferBack/, Way fromWay, Road* to /TransferBack/, Way toWay, VehicleType vehicleType=vns::CAR) /TransferBack/;
};