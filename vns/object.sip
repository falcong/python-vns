
%ModuleCode
#include <vns/object.h>
%End

class Object {

%TypeHeaderCode
#include <vns/object.h>
using namespace vns;
%End

public:
	enum Type {
	    ObstacleT,
	    VehicleT,
	    GhostT
	};

    Object(Object::Type type, float width, float length);

    virtual ~Object();
    Object::Type getObjectType() const;
    virtual const Vec& getPosition() const;
    virtual const Vec& getDirection() const;
    virtual float getSpeed() const;
    float getWidth() const;
    float getLength() const;

protected:
    virtual void simulationStep(Simulator* simulator) = 0;
    virtual void updateStep(Simulator* simulator) = 0;

};