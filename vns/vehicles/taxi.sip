
%ModuleCode
#include <vns/taxi.h>
%End

class Taxi : public Vehicle /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/taxi.h>
using namespace vns;
%End

public:
	enum TaxiState { Busy, Free, Picking, Stand, Pause };

	virtual ~Taxi();
	void setServiceState(Taxi::TaxiState st);
	Taxi::TaxiState getServiceState() const;

};