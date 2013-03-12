
%ModuleCode
#include <vns/mapfile.h>
%End

class MapFile {

%TypeHeaderCode
#include <vns/mapfile.h>
using namespace vns;
%End

public:
	MapFile();
	virtual ~MapFile();
	virtual const char* getFileType();
	virtual const char* getFileExtension();
	virtual bool load(RoadNetwork* network, const char* fileName);
	virtual bool save(const RoadNetwork* network, const char* fileName);
	RoadNetwork* createRoadNetwork(const char* fileName) /TransferBack/;
};