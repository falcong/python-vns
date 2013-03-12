
%ModuleCode
#include <vns/tigermapfile.h>
%End

class TigerMapFile : public ShpMapFile {

%TypeHeaderCode
#include <vns/tigermapfile.h>
using namespace vns;
%End

public:
	TigerMapFile();
	virtual ~TigerMapFile();
	const char* getFileType() const;
	const char* getFileExtension() const;
	bool save(const RoadNetwork* network, const char* fileName);

};