%ModuleCode
#include <vns/mercartor.h>
%End

class Mercartor {
	
%TypeHeaderCode
#include <vns/mercartor.h>
using namespace vns;
%End
	
public:
	static Vec toXY(double lon,double lat);
	static Vec toXY(const Vec& p);
	static Vec toLonLat(double x, double y);
	static Vec toLonLat(const Vec& p);
	static void toLonLat(RoadNetwork* network) const;
	static void toLonLat(PolyLine* line) const;
	static void toXY(RoadNetwork* network) const;
	static void toXY(PolyLine* line) const;
};
