

%ModuleCode
#include <vns/osmmapfile.h>
%End

class OsmMapFile : public MapFile {

%TypeHeaderCode
#include <vns/osmmapfile.h>
using namespace vns;
%End

public:
	OsmMapFile();
	virtual ~OsmMapFile();
	const char* getFileType() const;
	const char* getFileExtension() const;
	bool load(RoadNetwork* network, const char* fileName);
	bool save(const RoadNetwork* network, const char* fileName);

};