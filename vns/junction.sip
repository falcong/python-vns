
%ModuleCode
#include <vns/junction.h>
%End

class Junction /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/junction.h>
using namespace vns;
%End

protected:

    ~Junction();

public:
    const BBox& getBBox() const;
	int32 getID() const;
	RoadNetwork* getRoadNetwork();
	//const RoadNetwork* getRoadNetwork() const;
	const Vec& getPosition() const;
    void setPosition(const Vec& p);

	int8 getNumberOfRoads() const;
	Road* getRoad(int8 i);
	//const Road* getRoad(int8 i) const;
	int8 getRoadIndex(const Road* road) const;
    bool isEntryRoad(const Road* road) const;
    bool isExitRoad(const Road* road) const;

    Road* getLeftRoad(const Road* road);
    Road* getRightRoad(const Road* road);
    Road* getLeftEntryRoad(const Road* road);
    Road* getRightEntryRoad(const Road* road);
};