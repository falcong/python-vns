

%ModuleCode
#include <vns/shpmapfile.h>
%End

class ShpMapFile : public MapFile {

%TypeHeaderCode
#include <vns/shpmapfile.h>
using namespace vns;
%End

public:
	ShpMapFile();
	virtual ~ShpMapFile();
	virtual const char* getFileType() const;
	virtual const char* getFileExtension() const;
	virtual bool load(RoadNetwork* network, const char* fileName);
	virtual bool save(const RoadNetwork* network, const char* fileName);
	
//protected:
	//virtual bool hasValidNumberOfFields(int numberOfFields );
	//virtual BBox getExtents(double xmin, double ymin, double xmax, double ymax);
	//virtual void initializeLoad(RoadNetwork* network);
	//virtual void finalizeLoad(RoadNetwork* network);
	//virtual Vec loadPoint(double x,double y);
	//virtual Vec savePoint(double x,double y);
	//virtual bool loadRoad(DBFHandle& dbfHandle, int id, RoadNetwork* network, PolyLine* line);

	//virtual void createDBFFields(DBFHandle& dbf);
	//virtual void saveDBFRoad(DBFHandle& dbf,int id,const Road* road);

};