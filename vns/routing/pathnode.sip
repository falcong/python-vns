
%ModuleCode
#include <vns/pathnode.h>
%End


class PathNode /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/pathnode.h>
using namespace vns;
%End

private:
	~PathNode();
public:
	//Road* getRoad();
	const Road* getRoad() const;
	Way getWay() const;
	int32 getNumberOfStops() const;
	bool addStop(PathStop::Type type, double position, float duration);
	void clearStops();
	bool hasPrevious() const;
	bool hasNext() const;
	//PathNode* getPrevious();
	//PathNode* getNext();
	const PathNode* getPrevious() const;
	const PathNode* getNext() const;

	class StopsIterator {
	%TypeHeaderCode
	#include <vns/pathnode.h>
	using namespace vns;
	%End

	public:
		StopsIterator();
		bool isValid() const;
		void next();
		void previous();
		const PathStop* get() const;
	    float getPosition() const;
	    float getDuration() const;
	    PathStop::Type getType() const;
	};

	//PathNode::StopsIterator getStopsIterator();
	PathNode::StopsIterator getStopsIterator() const;

};