
%ModuleCode
#include <vns/pretimedtrafficlightcontroller.h>
%End

class PreTimedState /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/pretimedtrafficlightcontroller.h>
using namespace vns;
%End

private:
	~PreTimedState();
 
public:
	int8 getNumberOfStates();
	int8 addState(float duration, const Vector<Light>& lights);
	double getScheduledTime();
};

class PreTimedTrafficLightController : public TrafficLightController /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/pretimedtrafficlightcontroller.h>
using namespace vns;
%End

public:

	int32 getNumberOfPreTimedStates() const;
	PreTimedState* getPreTimedState(int32 i) const;
	PreTimedState* newPreTimedState( double scheduledTimed );
	void removePreTimedState(PreTimedState* state);
	void removePreTimedState(int32 i);
	
	int32 getNumberOfLights() const;
    //Lane* getLane(int32 lightID);
    const Lane* getLane(int32 lightID) const;
    
    bool installLight(Lane* lane);
	//void installLights(const Vector<Lane*>& lanes);
	bool hasLightInstalled(Lane* lane);
    void uninstallLight(Lane* lane);
    void uninstallLights();
    
protected:
	//PreTimedTrafficLightController(int32 id, RoadNetwork* network);
	virtual ~PreTimedTrafficLightController();

    void initialize(Simulator* sim);
    void update(Simulator* sim);

};