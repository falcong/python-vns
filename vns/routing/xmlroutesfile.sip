
%ModuleCode
#include <vns/xmlroutesfile.h>
%End

class XmlRoutesFile : public RoutesFile {

%TypeHeaderCode
#include <vns/xmlroutesfile.h>
using namespace vns;
%End

public:
	XmlRoutesFile();
	virtual ~XmlRoutesFile();
	const char* getFileType();
	const char* getFileExtension();
	bool load(Routes* routes, const char* fileName);
	bool save(const Routes* routes, const char* fileName);
};
