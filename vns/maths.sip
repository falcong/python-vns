
%ModuleCode
#include <vns/maths.h>
%End

bool intersects(const Vec& p1,const Vec& p2,const Vec& p3,const Vec& p4);
bool intersects(const Vec& p1,const Vec& p2,const Vec& p3,const Vec& p4, Vec& ip);
Vec closestPoint(const Vec& p, const Vec& a,const Vec& b);