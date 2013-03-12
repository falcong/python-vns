
%ModuleCode
#include <vns/networkmodule.h>
%End

class NetworkModule {

%TypeHeaderCode
#include <vns/networkmodule.h>
using namespace vns;
%End

public:
	NetworkModule();
	virtual ~NetworkModule();

public:
	virtual void onSimulationStart(Simulator*);
	virtual void onSimulationStop(Simulator*);
	virtual void onSimulationStep(Simulator*);
	virtual void onVehicleCreated(Simulator*,Vehicle*);
	virtual void onVehicleRemoved(Simulator*,Vehicle*);
};
