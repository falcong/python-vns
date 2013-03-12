
%ModuleCode
#include <vns/pathfinderhandler.h>
%End

class WeightFunction /NoDefaultCtors,Abstract/ {

%TypeHeaderCode
#include <vns/pathfinderhandler.h>
using namespace vns;
%End

public:
	virtual ~WeightFunction();
	virtual double getG(const Road* road,Way way) = 0;
	virtual double getH(const Vec& p1, const Vec& p2) = 0;
	virtual bool isPossibleToCross(const Road* from, Way fromWay,const Road* to, Way toWay,const VehicleType& type=0);
};

class DistanceFunction : public WeightFunction {

%TypeHeaderCode
#include <vns/pathfinderhandler.h>
using namespace vns;
%End

public:
	virtual double getG(const Road* road,Way);
	virtual double getH(const Vec& p1, const Vec& p2);
};

class TravelTimeFunction : public WeightFunction {

%TypeHeaderCode
#include <vns/pathfinderhandler.h>
using namespace vns;
%End

public:
	virtual double getG(const Road* road, Way way);
	virtual double getH(const Vec& p1, const Vec& p2);
};


class PathFinderHandler /NoDefaultCtors,Abstract/ {

%TypeHeaderCode
#include <vns/pathfinderhandler.h>
using namespace vns;
%End

public:
	virtual ~PathFinderHandler();
	virtual Path* calculatePath(RoadNetwork* network, Road* from, Way fromWay, Road* to, Way toWay, const VehicleType& type=0) = 0 /TransferBack/;
};