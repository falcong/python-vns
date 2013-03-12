

%ModuleCode
#include <vns/sumomapfile.h>
%End

class SUMOMapFile : public MapFile {

%TypeHeaderCode
#include <vns/sumomapfile.h>
using namespace vns;
%End

public:
	SUMOMapFile();
	virtual ~SUMOMapFile();
	const char* getFileType() const;
	const char* getFileExtension() const;
	bool load(RoadNetwork* network, const char* fileName);
	bool save(const RoadNetwork* network, const char* fileName);

};