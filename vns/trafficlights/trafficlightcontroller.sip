
%ModuleCode
#include <vns/trafficlightcontroller.h>
%End

class TrafficLightState {

%TypeHeaderCode
#include <vns/trafficlightcontroller.h>
using namespace vns;
%End

public:
	TrafficLightState();
	TrafficLightState(float t, const Vector<Light>& colors);
	virtual ~TrafficLightState();

	Light getLight(int8 i) const;
	void setLight(int8 i,Light light);
	float getDuration() const;
	void setDuration(float t);
	int8 getNumberOfLights() const;
};


class TrafficLightController /NoDefaultCtors,Abstract/ {

%TypeHeaderCode
#include <vns/trafficlightcontroller.h>
using namespace vns;
%End

public:
	enum Type { FixedTime, PreTimed};

	int32 getID() const;
   	TrafficLightController::Type getType() const;
    //RoadNetwork* getRoadNetwork();
    const RoadNetwork* getRoadNetwork() const;

	virtual int32 getNumberOfLights() const = 0;
    //virtual Lane* getLane(int32 lightID) = 0;
    virtual const Lane* getLane(int32 lightID) const = 0;
    virtual void uninstallLights() = 0;
    
protected:
    //TrafficLightController(int32 id, TrafficLightController::Type type, RoadNetwork* network);
	virtual ~TrafficLightController();

    virtual void initialize(Simulator* sim) = 0;
    virtual void update(Simulator* sim) = 0;

};