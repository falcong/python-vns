%ModuleCode
#include <ns3/mobility-model.h>
#include <vns/ns3networkmodule.h>
%End

class VnsMobilityModel {

%TypeHeaderCode
#include <vns/ns3networkmodule.h>
using namespace vns;
%End
	
public:
	VnsMobilityModel();
	VnsMobilityModel(Vehicle* veh);
	~VnsMobilityModel();


	Vehicle* getVehicle();
	/*
	ns3::Vector GetPosition() const;
	ns3::Vector GetVelocity() const;
	void SetPosition( const ns3::Vector& position);
	ns3::Vector DoGetPosition (void) const;
	void DoSetPosition(const ns3::Vector& position);
	ns3::Vector DoGetVelocity (void) const;
	void DoDispose(void);
	static ns3::TypeId GetTypeId();
	*/

};


class NS3Network {

%TypeHeaderCode
#include <vns/ns3networkmodule.h>
using namespace vns;
%End

public:
	NS3Network(const RoadNetwork* net);
	virtual ~NS3Network();
	virtual void initialize(const Simulator*);
	virtual void onVehicleCreated(const Simulator*,SIP_PYOBJECT);
%MethodCode

%End
	virtual void onVehicleRemoved(const Simulator*,PyObject*);
%MethodCode

%End
	virtual void onSimulationStep(const Simulator*);
	virtual void finalize(const Simulator*);

	const RoadNetwork* getRoadNetwork();

protected:
	//ns3::VnsWifiChannelHelper createWifiChannelHelper();
	//ns3::VnsWifiPhyHelper* createWifiPhyHelper();

};



class NS3NetworkModule : public NetworkModule {

%TypeHeaderCode
#include <vns/ns3networkmodule.h>
using namespace vns;
%End

public:
	NS3NetworkModule();
	virtual ~NS3NetworkModule();

	void setNetwork(NS3Network* factory);
	void setNodeRemovalDelay(int delay);

};
