
%ModuleCode
#include <vns/painter.h>
%End

class Painter {

%TypeHeaderCode
#include <vns/painter.h>
using namespace vns;
%End

public:
	Painter();
	virtual ~Painter();
	void initialize(SceneViewer* w);

	void drawRailAsphalt(SceneViewer* w,const Road* road,uint8 lod);
	void drawRailTrack(SceneViewer* w,const Road* road,uint8 lod);
	void drawRoadAsphalt(SceneViewer* w,const Road* road,uint8 lod);
	void drawRoadMarkers(SceneViewer* w,const Road* road,uint8 lod);
	void drawJunctionAsphalt(SceneViewer* w,const Junction* junction,uint8 lod);
	void drawJunctionMarkers(SceneViewer* w,const Junction* junction,uint8 lod);
	void drawLane(SceneViewer* w,const Lane* lane,uint8 lod);
	void drawStopSign(const Vec& pt, const Vec& dir, const Vec& perp);
	void drawYieldSign(const Lane* lane);
	void drawLaneArrows(const Vec& pt, const Vec& dir, const Vec& perp, const Lane* lane);
	void drawContinuousLine(const PolyLine* line, double offset, double start, double end, double lineWidth=0.12);
	void drawDiscontinuousLine(const PolyLine* line, double offset, double start, double end, double lineWidth=0.12,double spacing=2.0);
	void drawCrossWalk(const Road* road, Way way, float width=3.0, float interval=0.50);
	void drawRoadPoints(SceneViewer* w,const Road* road,uint8 lod);
	void drawJunctionBorder(const Vec& p1,const Vec& p2, const Vec& p3, const Vec& p4, double offset=0.0);
	void drawCircularPoint(const Vec& pos, const double radius);
	void drawCircularPoint(double x,double y, const double radius);
	void drawHighlightedRoad(const Road* road,uint8 lod);
	void drawRoutePath(SceneViewer* w, const Path* path);
	virtual void drawVehicle(SceneViewer* w, const Vehicle* vehicle, uint8 lod);
	void drawLaneConnections(SceneViewer* w, const Lane* lane, uint8 lod);
	void drawLaneNextLanes(SceneViewer* w, const Lane* lane, uint8 lod);
	void drawNumbersOfJunctionExitLanes(SceneViewer* w, const Junction* junction, uint8 lod);
	void drawLights(const Lane* lane);
	virtual void draw(SceneViewer*,const BBox&, uint8);

	virtual void setColor3f(float r,float g,float b);
	virtual void setColor4f(float r,float g,float b,float a);
	virtual void setPointSize(float s);
	virtual void setLineWidth(float w);
	virtual void drawPoint(const Vec&);
	virtual void drawPoint(double x, double y, double z=0.0);
	virtual void drawBBox(const BBox& bbox);
	virtual void drawTrajectory(const Vec& p1,const Vec& d1,const Vec& p2,const Vec& d2,float width);
	void drawRoadInfo(SceneViewer* viewer,const Road* road);

	void drawDebugArrows(const Vec& pt, const Vec& dir, const Vec& perp);
	void drawDebugRoad(const Road* road);
	void drawDebugJunction(const Junction* junction);

public:
	void setDrawJunctionAsphalt(bool v);
	void setDrawJunctionMarkers(bool v);
	void setDrawRoadAsphalt(bool v);
	void setDrawRoadMarkers(bool v);
	void setDrawRoadObjects(bool v);
	void setDrawRoadsEnabled(bool v);
	bool isDrawRoadsEnabled();
};