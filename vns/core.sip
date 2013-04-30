
%ModuleCode
#include <vns/core.h>
%End

typedef unsigned int uint;
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned long ulong;
typedef unsigned char byte;
typedef signed char int8;
typedef unsigned char uint8;
typedef short int16;
typedef unsigned short uint16;
typedef int int32;
typedef unsigned int uint32;
typedef long long int64;
typedef unsigned long long uint64;

const int16 MAX_INT8;
const int16 MAX_INT16;
const int32 MAX_INT32;
const int64 MAX_INT64;
const uint8 MAX_UINT8;
const uint16 MAX_UINT16;
const uint32 MAX_UINT32;
const uint64 MAX_UINT64;
const double MAX_DOUBLE;
const float MAX_FLOAT;

const int16 MIN_INT8;
const int16 MIN_INT16;
const int32 MIN_INT32;
const int64 MIN_INT64;
const uint8 MIN_UINT8;
const uint16 MIN_UINT16;
const uint32 MIN_UINT32;
const uint64 MIN_UINT64;
const double MIN_DOUBLE;
const float MIN_FLOAT;

enum Way { Backward=false, Forward=true };
typedef int8 VehicleType;
typedef int8 VehicleModel;
enum Light { NoLight, RedLight, GreenLight, YellowLight, OffLight };

const VehicleType CAR;
const VehicleType BIKE;
const VehicleType TAXI;
const VehicleType BUS;
const VehicleType TRUCK;
const VehicleType TRAIN;

void setNumberOfThreads(int nThreads);
int getNumberOfThreads();
int getThreadID();
double getWTime();