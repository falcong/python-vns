
%ModuleCode
#include <vns/manhattanmap.h>
%End

class ManhattanMap {

%TypeHeaderCode
#include <vns/manhattanmap.h>
using namespace vns;
%End

public:
	ManhattanMap(int rows,int cols);
	virtual ~ManhattanMap();

	void setRoadLength(float length);
	void setNumberOfForwardLanes(int n);
	void setNumberOfBackwardLanes(int n);
	void setForwardParkingLanes(bool parking);
	void setBackwardParkingLanes(bool parking);
	void setQueueSize(uint32 size);

	RoadNetwork* createRoadNetwork() /TransferBack/;
	Routes* createRoutes(RoadNetwork* network,int ncars,double simtime,VehicleType vType=vns::CAR,const DriverInfo& driver=CarDriver()) /TransferBack/;

};