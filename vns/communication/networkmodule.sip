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
	virtual void onSimulationStart(const Simulator*);
	virtual void onSimulationStop(const Simulator*);
	virtual void onSimulationStep(const Simulator*);
	virtual void onVehicleCreated(const Simulator*,Vehicle*);
	virtual void onVehicleRemoved(const Simulator*,Vehicle*);
};
