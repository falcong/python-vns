
%ModuleCode
#include <vns/sumoroutesfile.h>
%End

class SUMORoutesFile : public RoutesFile {

%TypeHeaderCode
#include <vns/sumoroutesfile.h>
using namespace vns;
%End

public:
	SUMORoutesFile();
	virtual ~SUMORoutesFile();
	const char* getFileType();
	const char* getFileExtension();
	bool load(Routes* routes, const char* fileName);
	bool save(const Routes* routes, const char* fileName);
};
