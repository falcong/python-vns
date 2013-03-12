
%ModuleCode
#include <vns/bbox.h>
%End

class BBox {

%TypeHeaderCode
#include <vns/bbox.h>
using namespace vns;
%End

%PickleCode
    sipRes = Py_BuildValue((char *)"dddd", sipCpp->getMinX(), sipCpp->getMinY(),sipCpp->getMaxX(), sipCpp->getMaxY());
%End
    
public:

    BBox(double xmin=vns::MAX_DOUBLE, double ymin=vns::MAX_DOUBLE, double xmax=vns::MIN_DOUBLE, double ymax=vns::MIN_DOUBLE);
    BBox(const Vec& vmin, const Vec& vmax);
    BBox(const BBox& bb);
    virtual ~BBox();
    
    	SIP_PYOBJECT __repr__() const /DocType="str"/;
%MethodCode
		PyObject *minx = PyFloat_FromDouble(sipCpp->getMinX());
		PyObject *miny = PyFloat_FromDouble(sipCpp->getMinY());
		PyObject *maxx = PyFloat_FromDouble(sipCpp->getMaxX());
		PyObject *maxy = PyFloat_FromDouble(sipCpp->getMaxY());
		sipRes = PyString_FromString("vns.BBox(");
		PyString_ConcatAndDel(&sipRes, PyObject_Repr(minx));
		PyString_ConcatAndDel(&sipRes, PyString_FromString(","));
		PyString_ConcatAndDel(&sipRes, PyObject_Repr(miny));
		PyString_ConcatAndDel(&sipRes, PyString_FromString(","));
		PyString_ConcatAndDel(&sipRes, PyObject_Repr(maxx));
		PyString_ConcatAndDel(&sipRes, PyString_FromString(","));
		PyString_ConcatAndDel(&sipRes, PyObject_Repr(maxy));
		PyString_ConcatAndDel(&sipRes, PyString_FromString(")"));
		Py_XDECREF(minx);
		Py_XDECREF(miny);
		Py_XDECREF(maxx);
		Py_XDECREF(maxy);
%End
    void setBox(double xmin, double ymin, double xmax, double ymax);
    void setBox(const BBox& box);
    void clear();
    void addPoint(const Vec& pt);
    void addBBox(const BBox& box);
    bool contains( const Vec& pt ) const;
    bool intersects( const BBox& bb ) const;
    bool intersects( const Vec& p1, const Vec& p2 ) const;
    double getMinX() const;
    double getMinY() const;
    double getMaxX() const;
    double getMaxY() const;
    double getHeight() const;
    double getWidth() const;
    Vec getLeftTop() const;
    Vec getLeftBottom() const;
    Vec getRightTop() const;
    Vec getRightBottom() const;
    Vec getCenter() const;
	double getArea() const;
	double getIntersectionArea(const BBox& bb) const;
	double getDistanceFromCenter(const BBox& bb) const;
	
	bool operator==(const BBox &bb) const;
	bool operator!=(const BBox &bb) const;
};

class BBoxItem {
%TypeHeaderCode
#include <vns/bbox.h>
using namespace vns;
%End
public:
	virtual ~BBoxItem();
	virtual const BBox& getBBox() const = 0;
};