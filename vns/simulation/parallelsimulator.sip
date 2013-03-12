
%ModuleCode
#include <vns/parallelsimulator.h>
%End

class ParallelSimulator : public Simulator {

%TypeHeaderCode
#include <vns/parallelsimulator.h>
using namespace vns;
%End

public:

    ParallelSimulator();
    ~ParallelSimulator();

};