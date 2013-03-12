
%ModuleCode
#include <vns/trafficlightsgenerator.h>
%End

class TrafficLightsGenerator {

%TypeHeaderCode
#include <vns/trafficlightsgenerator.h>
using namespace vns;
%End

public:
	TrafficLightsGenerator();
	virtual ~TrafficLightsGenerator();

	void generateTrafficLights(RoadNetwork* network);
	TrafficLightController* generateTrafficLights(Junction* junction);

};