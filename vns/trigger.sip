
%ModuleCode
#include <vns/trigger.h>
%End

class Trigger {

%TypeHeaderCode
#include <vns/trigger.h>
using namespace vns;
%End

public:
	virtual ~Trigger();
	virtual void enter( Vehicle* vehicle, double simtime ) = 0;
	virtual void leave( Vehicle* vehicle, double simtime ) = 0;
	virtual int32 read( double simtime ) = 0;
	virtual float getLength() = 0;
};