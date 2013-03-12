
%ModuleCode
#include <vns/simulator.h>
%End

class Simulator {

%TypeHeaderCode
#include <vns/simulator.h>
using namespace vns;
%End

public:
    static const double DT;

	static const int32 SmoothLaneChanges;
	static const int32 RouteChanges;
	static const int32 TrafficLights;
	static const int32 RealisticParking;

	void addFlags(int32 flgs);
	void removeFlags(int32 flgs);
	bool hasFlag(int32 flg) const;
	bool hasFlags(int32 flgs) const;

    Simulator();
    Simulator(RoadNetwork* network);
    ~Simulator();

public:

    void setRoadNetwork( RoadNetwork* network );
    RoadNetwork* getRoadNetwork();
    //const RoadNetwork* getRoadNetwork() const;
    void setRandomSeed(unsigned int s);
    unsigned int getRandomSeed() const;
    void setStepTime( double stepTime );
    void setFinishTime( double endTime );
    void setDateTime( uint32 baseTime );
    double getFinishTime() const;
    double getSimulationTime() const;
    uint32 getDateTime() const;
    double getStepTime() const;
    uint32 getStep() const;
    bool isRunning() const;
    double getExecutionTimePerStep() const;
    uint32 getNumberOfVehicles() const;
    uint32 getNumberOfVehiclesInQueue() const;
    void addObserver(Observer* observer);
    void setVehicleFactory(VehicleFactory* factory);
    //void setModulesFactory(ModulesFactory* factory);
    void setTrafficGenerationModel(TrafficGenerationModel* model);
    void setNetworkModule(NetworkModule* module);
    const VehicleFactory* getVehicleFactory() const;
    //EventScheduler* getEventScheduler();

    void start();
    void step();
    void stop();
    void run();
};