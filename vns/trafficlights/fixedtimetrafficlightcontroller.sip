
%ModuleCode
#include <vns/fixedtimetrafficlightcontroller.h>
%End

class FixedTimeTrafficLightController : public TrafficLightController /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/fixedtimetrafficlightcontroller.h>
using namespace vns;
%End

public:

	void setTimeOffset(double offset);
	double getTimeOffset() const;
	int32 getNumberOfStates() const;

	int32 addState(float duration, const Vector<Light>& colors);
	void removeState(int32 i);
	void clearStates();
	TrafficLightState* getState(int32 i);
	//const TrafficLightState* getState(int32 i) const;

    int32 getNumberOfLights() const;
    Lane* getLane(int32 lightID);
    //const Lane* getLane(int32 lightID) const;
    
    bool installLight(Lane* lane);
	bool hasLightInstalled(Lane* lane) const;
    void uninstallLight(Lane* lane);
    void uninstallLights();
    
protected:
	//FixedTimeTrafficLightController(int32 id, RoadNetwork* network);
	virtual ~FixedTimeTrafficLightController();

    void initialize(Simulator* sim);
    void update(Simulator* sim);
    
};