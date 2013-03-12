
%ModuleCode
#include <vns/train.h>
%End

class TrainCar : public Vehicle /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/train.h>
using namespace vns;
%End

public:

	virtual ~TrainCar();

	static TrainCar* fromVehicle(Vehicle* vehicle);

protected:
    void simulationStep(Simulator* simulator);
    void updateStep(Simulator* simulator);

	void initialize(Simulator* sim);
    void updateLanePosition(Simulator* sim);
    void movingInLane(Simulator* sim);
    void crossToRoad(Simulator* sim,Lane* nextLane);
    void movingInJunction(Simulator* sim);

};


class Train : public Vehicle /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/train.h>
using namespace vns;
%End

public:

	virtual ~Train();

	int getNumberOfCars();
	TrainCar* getCar(int i);

	static Train* fromVehicle(Vehicle* vehicle);

protected:
    void simulationStep(Simulator* simulator);
    void updateStep(Simulator* simulator);
	void initialize(Simulator* sim);

};