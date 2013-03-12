
%ModuleCode
#include <vns/observer.h>
%End
class Observer {

%TypeHeaderCode
#include <vns/observer.h>
using namespace vns;
%End

public:
	virtual ~Observer();
	virtual void onVehicleCreated(const Simulator* , Vehicle* );
	virtual void onVehicleRemoved(const Simulator* , Vehicle* );
	virtual void onVehicleInjected(const Simulator* , Vehicle* );
	virtual void onRouteChanged(const Simulator* , Vehicle* );
	virtual void onEnterRouteStop(const Simulator* , Vehicle* );
	virtual void onLeaveRouteStop(const Simulator* , Vehicle* );
	virtual void onEnterTaxiStand(const Simulator* , Vehicle* );
	virtual void onLeaveTaxiStand(const Simulator* , Vehicle* );
	virtual void onEnterParkingLane(const Simulator* , Vehicle* );
	virtual void onLeaveParkingLane(const Simulator* , Vehicle* );
	virtual void onLaneEnter(const Simulator* , Vehicle* );
	virtual void onRoadEnter(const Simulator* , Vehicle* );
	virtual void onSimulationStart(const Simulator* );
	virtual void onSimulationStop(const Simulator* );
	virtual void onSimulationStep(const Simulator* );
	virtual void onLaneObjectSimulationStep(const Simulator* ,LaneObject*);
};