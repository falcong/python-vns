
%ModuleCode
#include <vns/laneobject.h>
%End

class LaneObject : public Object {

%TypeHeaderCode
#include <vns/laneobject.h>
using namespace vns;
%End

public:

    LaneObject(Object::Type type, float width=1.0, float length=1.0);
    virtual ~LaneObject();
    virtual float getAccel() const;
    virtual float getAccelTo(const LaneObject*) const;
    float gapTo(LaneObject *fo) const;
    float gapTo(float pos, LaneObject *fo) const;
    float gapToNextObject() const;
    float getLanePosition() const;
    float getFrontPosition() const;
    float getRearPosition() const;
    LaneObject* getNextObject();
    LaneObject* getPreviousObject();
    Lane* getLane();
    Lane* getNextLane();
    Lane* getPreviousLane();

protected:
    virtual void simulationStep(Simulator*);
    virtual void updateStep(Simulator*);

};