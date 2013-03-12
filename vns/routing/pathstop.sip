
%ModuleCode
#include <vns/pathstop.h>
%End
    
class PathStop /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/pathstop.h>
using namespace vns;
%End

public:
    enum Type { LeftParking, RightParking, LeftMostLane, RightMostLane, LeftTaxiStand, RightTaxiStand };

    float getPosition() const;
    float getDuration() const;
    PathStop::Type getType() const;

    static PathStop::Type fromTypeName(const char* typeName);
    static const char* fromType(PathStop::Type type);
};