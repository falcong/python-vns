

%ModuleCode
#include <vns/xmlmapfile.h>
%End

class XmlMapFile : public MapFile {

%TypeHeaderCode
#include <vns/xmlmapfile.h>
using namespace vns;
%End

public:
	XmlMapFile();
	virtual ~XmlMapFile();
	const char* getFileType() const;
	const char* getFileExtension() const;
	bool load(RoadNetwork* network, const char* fileName);
	bool save(const RoadNetwork* network, const char* fileName);

};