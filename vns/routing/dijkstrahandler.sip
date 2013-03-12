
%ModuleCode
#include <vns/dijkstrahandler.h>
%End

class DijkstraHandler : public PathFinderHandler /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/dijkstrahandler.h>
using namespace vns;
%End

public:
	DijkstraHandler(WeightFunction* function /TransferBack/);
	virtual ~DijkstraHandler();

	Path* calculatePath(RoadNetwork* network, Road* from, Way wayFrom, Road* to, Way wayTo, const VehicleType& vehicleType=vns::CAR) /TransferBack/;
};