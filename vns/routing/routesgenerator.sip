
%ModuleCode
#include <vns/routesgenerator.h>
%End

class RoutesGenerator /NoDefaultCtors/{

%TypeHeaderCode
#include <vns/routesgenerator.h>
using namespace vns;
%End

public:
	enum Type {ALL, PARKING, NOJUNCTION, PARKING_OR_NOJUNCTION};

	RoutesGenerator(RoadNetwork* network);
	virtual ~RoutesGenerator();

	void setGenerationInterval(float interval);
	void setVehicleType(const VehicleType& type);
	void setSourceRoads(RoutesGenerator::Type type);
	void setSinkRoads(RoutesGenerator::Type type);
	void setHandler(PathFinderHandler* finderHandler);
	void setRandomSeed(unsigned int rseed);

	Routes* generate(int numberOfRoutes);
	void generate(Routes* routes,int numberOfRoutes);

};