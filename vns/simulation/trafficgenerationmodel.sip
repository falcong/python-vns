
%ModuleCode
#include <vns/trafficgenerationmodel.h>
%End

class TrafficGenerationModel {

%TypeHeaderCode
#include <vns/trafficgenerationmodel.h>
using namespace vns;
%End

public:

	TrafficGenerationModel( Routes* routes = 0 );
	virtual ~TrafficGenerationModel();

	void setGenerationFunction(GenerationFunction* function);

	virtual void onSimulationStart( Simulator* simulator );
	virtual void onSimulationStep( Simulator* simulator );
	virtual void onSimulationFinished( Simulator* simulator );

protected:
	void addRoute(Simulator* sim, Route* route);
	void addScheduledRoute(Simulator* sim, ScheduledRoute* route);

};