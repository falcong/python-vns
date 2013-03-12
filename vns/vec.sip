
%ModuleCode
#include <vns/vec.h>
%End

class Vec {

%TypeHeaderCode
#include <vns/vec.h>
using namespace vns;
%End

%PickleCode
    sipRes = Py_BuildValue((char *)"dd", sipCpp->x(), sipCpp->y());
%End

public:
    Vec();
    Vec(double xv, double yv, double zv=0);
    ~Vec();
    
	SIP_PYOBJECT __repr__() const /DocType="str"/;
%MethodCode
		PyObject *x = PyFloat_FromDouble(sipCpp->x());
		PyObject *y = PyFloat_FromDouble(sipCpp->y());
		sipRes = PyString_FromString("vns.Vec(");
		PyString_ConcatAndDel(&sipRes, PyObject_Repr(x));
		PyString_ConcatAndDel(&sipRes, PyString_FromString(","));
		PyString_ConcatAndDel(&sipRes, PyObject_Repr(y));
		PyString_ConcatAndDel(&sipRes, PyString_FromString(")"));
		Py_XDECREF(x);
		Py_XDECREF(y);
%End
    
    Vec operator+(const Vec &v) const;
    bool operator==(const Vec &v) const;
    bool operator!=(const Vec &v) const;
    Vec operator-(const Vec &v) const;
    Vec operator-() const;
    double operator*(const Vec& p) const;

    Vec operator*(const double a) const;
    //friend Vec operator*(const double a, const Vec& v) const;
    Vec operator/(double fact) const;
    Vec& operator*=(double fact);


    Vec perpendicular() const;
    Vec normalized() const;
    void normalize();
    double norm() const;
    double normSquared() const;
    
    double dot(const Vec& p) const;
    Vec cross(const Vec& p) const;

    double dir_deg() const;
    double dir_rad() const;

    double x() const;
    double y() const;
    double z() const;
    double getX() const;
    double getY() const;
    double getZ() const;
    void setX(double mx);
    void setY(double my);
    void setZ(double mz);

/*
    double& operator[](int dim);
    double operator[](int dim) const;*/

    double angleTo(Vec v) const;
    double angleDiffTo(Vec v) const;
    double distanceTo(const Vec& p) const;
    double distanceToLessThan(const Vec& p, double d) const;
    double distanceToLine(const Vec& p1,const Vec& p2) const;
    Vec nearPointInTheLine(const Vec& p1,const Vec& p2) const;

/*
    friend DataStream& operator<<(DataStream& ds, const Vec& v);
    friend DataStream& operator>>(DataStream& ds, Vec& v);
    friend uint hash(const Vec& p);
*/

};

class VecItem {

%TypeHeaderCode
#include <vns/vec.h>
using namespace vns;
%End

public:
	virtual ~VecItem();
	virtual const Vec& getPosition() const = 0;
};