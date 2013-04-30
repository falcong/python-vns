%ModuleCode
#include <vns/simplenetworkmodule.h>
%End


class SimpleNetwork {

%TypeHeaderCode
#include <vns/simplenetworkmodule.h>
using namespace vns;
%End

public:
	SimpleNetwork();
	virtual ~SimpleNetwork();
	void setCommunicationRange(double range);
	double getCommunicationRange();

protected:
	double getSimulationTime();
	EventScheduler* getScheduler();

	virtual void send(Vehicle* sender,SIP_PYOBJECT data) [void (Vehicle* sender,void* data)];
	virtual void onInitialize(const Simulator*,Vehicle*);
	virtual void onDataReceived(Vehicle*,Vehicle*, SIP_PYOBJECT data) [void (Vehicle*,Vehicle*,void *data)];
	virtual void onSendFinish(SIP_PYOBJECT data) [void (void *data)];
};

class SimpleNetworkModule : public NetworkModule {

%TypeHeaderCode
#include <vns/simplenetworkmodule.h>
using namespace vns;
%End

public:
	SimpleNetworkModule();
	virtual ~SimpleNetworkModule();

public:
	virtual void onSimulationStart(const Simulator*);
	virtual void onSimulationStop(const Simulator*);
	virtual void onSimulationStep(const Simulator*);
	virtual void onVehicleCreated(const Simulator*,Vehicle*);
	virtual void onVehicleRemoved(const Simulator*,Vehicle*);
	
	void setNetwork(SimpleNetwork* network);
};
