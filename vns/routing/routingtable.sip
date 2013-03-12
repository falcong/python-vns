
%ModuleCode
#include <vns/routingtable.h>
%End

class RoutingTable /NoDefaultCtors,Abstract/ {

%TypeHeaderCode
#include <vns/routingtable.h>
using namespace vns;
%End

public:
	RoutingTable(RoadNetwork* net);
	virtual ~RoutingTable();

	virtual Path* getPath(Road* src,Way srcWay,Road* dst,Way dstWay) = 0;
	virtual Path* getPath(int32 srcID,Way srcWay,int32 dstID,Way dstWay) = 0;
	virtual bool hasPath(Road* src,Way srcWay, Road* dst,Way dstWay) = 0;
	virtual bool hasPath(int32 srcID,Way srcWay,int32 dstID,Way dstWay) = 0;
	virtual int32 getWeight(int32 srcID,Way srcWay,int32 dstID,Way dstWay) = 0;
	virtual int32 getWeight(Road* src,Way srcWay,Road* dst,Way dstWay) = 0;
	virtual int32 getRawWeight(uint32 i,uint32 j) = 0;
	virtual int32 getRawPath(uint32 i,uint32 j) = 0;
	RoadNetwork* getRoadNetwork();

};