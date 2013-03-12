
%ModuleCode
#include <vns/astarhandler.h>
%End

class AStarHandler : public PathFinderHandler /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/astarhandler.h>
using namespace vns;
%End

public:

	AStarHandler(WeightFunction* f /TransferBack/);
	virtual ~AStarHandler();

	Path* calculatePath(RoadNetwork* network, Road* from, Way wayFrom, Road* to, Way wayTo, const VehicleType& vType=vns::CAR) /TransferBack/;

};