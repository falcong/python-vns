
%ModuleCode
#include <vns/generationfunction.h>
%End

class GenerationFunction /Abstract/ {

%TypeHeaderCode
#include <vns/generationfunction.h>
using namespace vns;
%End

public:
	virtual ~GenerationFunction();
	virtual double calcT(double t,double meanHeadway) const = 0;
};

class NegativeExponentialDistribution : public GenerationFunction {

%TypeHeaderCode
#include <vns/generationfunction.h>
using namespace vns;
%End

public:
	double calcT(double t,double meanHeadway) const;
};

class PoissonDistribution : public GenerationFunction {

%TypeHeaderCode
#include <vns/generationfunction.h>
using namespace vns;
%End

public:
	double calcT(double t,double meanHeadway) const;
};

class UniformDistribution : public GenerationFunction {

%TypeHeaderCode
#include <vns/generationfunction.h>
using namespace vns;
%End

public:
	double calcT(double t,double meanHeadway) const;
};