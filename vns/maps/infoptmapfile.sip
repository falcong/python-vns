
%ModuleCode
#include <vns/infoptmapfile.h>
%End

class InfoPTMapFile : public ShpMapFile {

%TypeHeaderCode
#include <vns/infoptmapfile.h>
using namespace vns;
%End

public:
	InfoPTMapFile();
	virtual ~InfoPTMapFile();
	const char* getFileType() const;
	const char* getFileExtension() const;

};