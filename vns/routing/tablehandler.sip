
%ModuleCode
#include <vns/tablehandler.h>
%End

class TableHandler : public PathFinderHandler /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/tablehandler.h>
using namespace vns;
%End

public:
	TableHandler(const char* filename);
	TableHandler(MemBasedRoutingTable* tb);
	virtual ~TableHandler();

	Path* calculatePath(RoadNetwork* network, Road* from, Way wayFrom, Road* to, Way wayTo,const VehicleType& type=0);
};