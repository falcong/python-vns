
%ModuleCode
#include <vns/path.h>
%End

class Path {

%TypeHeaderCode
#include <vns/path.h>
using namespace vns;
%End

public:
	Path();
	Path(Road* road,Way way);
	virtual ~Path();
	int32 getID() const;
	PathNode* appendNode(Road* road, Way way);
	PathNode* prependNode(Road* road, Way way);
	int32 getNumberOfNodes() const;
	bool isLoop() const;
	PathNode* getFirstNode();
	PathNode* getLastNode();
	//const PathNode* getFirstNode() const;
	//const PathNode* getLastNode() const;
	void printPath();
	void setLoop(bool v);
	Path* clone();
	bool append(Path* path);
	void join(Path* path);

	class Iterator {
	
	%TypeHeaderCode
	#include <vns/path.h>
	using namespace vns;
	%End

	public:
		Iterator();
		bool isValid() const;
		void next();
		void previous();
		const Path* getPath() const;
		PathNode* getFirst() const;
		PathNode* getLast() const;
		Road* getFirstRoad() const;
		Road* getLastRoad() const;
		Way getFirstRoadWay() const;
		Way getLastRoadWay() const;
		PathNode* get() const;
		Road* getRoad() const;
		Way getWay() const;
		bool hasNext() const;
		PathNode* getNext() const;
		Road* getNextRoad() const;
		Way getNextRoadWay() const;
		bool hasPrevious() const;
		PathNode* getPrevious() const;
		Road* getPreviousRoad() const;
		Way getPreviousRoadWay() const;
		PathNode::StopsIterator getStopsIterator();
	};

	class ConstIterator {
	%TypeHeaderCode
	#include <vns/path.h>
	using namespace vns;
	%End

	public:
		ConstIterator();
		bool isValid() const;
		void next();
		void previous();
		const Path* getPath() const;
		const PathNode* getFirst() const;
		const PathNode* getLast() const;
		const Road* getFirstRoad() const;
		const Road* getLastRoad() const;
		Way getFirstRoadWay() const;
		Way getLastRoadWay() const;
		const PathNode* get() const;
		const Road* getRoad() const;
		Way getWay() const;
		bool hasNext() const;
		const PathNode* getNext() const;
		const Road* getNextRoad() const;
		Way getNextRoadWay() const;
		bool hasPrevious() const;
		const PathNode* getPrevious() const;
		const Road* getPreviousRoad() const;
		Way getPreviousRoadWay() const;
		PathNode::StopsIterator getStopsIterator() const;
	};

	Path::Iterator getFirstNodeIterator();
	Path::Iterator getLastNodeIterator();
	Path::ConstIterator getFirstNodeConstIterator() const;
	Path::ConstIterator getLastNodeConstIterator() const;

    static bool isValidPath(const Path* path);
    static bool equalPaths(const Path* path1, const Path* path2);

};