
%ModuleCode
#include <vns/vnsshpmapfile.h>
%End

class VNSShpMapFile : public ShpMapFile {

%TypeHeaderCode
#include <vns/vnsshpmapfile.h>
using namespace vns;
%End

public:
	VNSShpMapFile();
	virtual ~VNSShpMapFile();
	const char* getFileType() const;
	const char* getFileExtension() const;

};