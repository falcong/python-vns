
%ModuleCode
#include <vns/membasedroutingtable.h>
%End

class MemBasedRoutingTable : public RoutingTable /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/membasedroutingtable.h>
using namespace vns;
%End

public:
	MemBasedRoutingTable(RoadNetwork* network /TransferBack/);
	virtual ~MemBasedRoutingTable();

	void computeAllPaths(WeightFunction* function /TransferBack/,const VehicleType& vType=vns::CAR);

	void load(const char* fileName);
	void save(const char* fileName);
	void printDistTable();
	void printPathTable();
	Path* getPath(Road* src,Way srcWay,Road* dst,Way dstWay) /TransferBack/;
	Path* getPath(int32 srcID,Way srcWay,int32 dstID,Way dstWay) /TransferBack/;
	bool hasPath(Road* src,Way srcWay, Road* dst,Way dstWay);
	bool hasPath(int32 srcID,Way srcWay,int32 dstID,Way dstWay);
	int32 getWeight(int32 srcID,Way srcWay,int32 dstID,Way dstWay);
	int32 getWeight(Road* src,Way srcWay,Road* dst,Way dstWay);
	int32 getRawWeight(uint32 i,uint32 j);
	int32 getRawPath(uint32 i,uint32 j);
};