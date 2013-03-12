
%ModuleCode
#include <vns/routesfile.h>
%End

class RoutesFile {

%TypeHeaderCode
#include <vns/routesfile.h>
using namespace vns;
%End

public:
	RoutesFile();
	virtual ~RoutesFile();
	virtual const char* getFileType();
	virtual const char* getFileExtension();
	virtual bool load(Routes* routes, const char* fileName);
	virtual bool save(const Routes* routes, const char* fileName);
	Routes* createRoutes(const char* fileName,RoadNetwork* network);
};
