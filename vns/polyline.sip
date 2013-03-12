
%ModuleCode
#include <vns/polyline.h>
%End

class PolyLine : public BBoxItem {

%TypeHeaderCode
#include <vns/polyline.h>
using namespace vns;
%End

public:
    
    PolyLine();
    PolyLine(const List<Vec>& pv);
    virtual ~PolyLine();

    const BBox& getBBox() const;

    void setPoints(const List<Vec>& pv);
    void updatePoint(int32 i, double x, double y, double z);
    void insertPoint(int32 i, const Vec& point);
    void removePoint(int32 i);
    void reverse();
    void clear();
    double getLength() const;

    int32 size() const;
    int32 getNumberOfPoints() const;
    const Vec& getPoint(int32 i) const;
    const Vec& getFirstPoint() const;
    const Vec& getFirstPointNormal() const;
    double getFirstPointT() const;
    const Vec& getLastPoint() const;
    const Vec& getLastPointNormal() const;
    double getLastPointT() const;
    const Vec& getNormal(int32 i) const;
    double getT(int32 i) const;
    Vec getLastPointDirection() const;
    Vec getFirstPointDirection() const;

    double distanceTo(const Vec& p) const;
    void pointDirFromFirstPoint(Vec& pt, Vec& dir, Vec& perp, double pos, double offset=0) const;
    void pointDirFromLastPoint(Vec& pt, Vec& dir, Vec& perp, double pos, double offset=0) const;
    int32 getPointWithin(const Vec&pt, double radius) const ;
    int32 getNearestPoint(const Vec& pt, double& d) const ;
    int32 getNearestSegment(const Vec&pt, double& d, Vec& spt) const;
    bool distanceToPointIsLessThan(const Vec& pt, double distance) const ;

    double getPosition(const Vec& p, bool forward = true);
    Vec getDirection(int32 i) const;
    Vec getPerpendicular(int32 i) const;

    int32 getIndexPosition(double p) const;
    int32 getIndexPositionX(double p,int32 i=0) const;
};