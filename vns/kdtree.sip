
%ModuleCode
#include <vns/kdtree.h>
%End

class KdTree {

%TypeHeaderCode
#include <vns/kdtree.h>
using namespace vns;
%End

public:
	KdTree(int k=2);
	KdTree(const List<VecItem*>& v, int k=2);
	~KdTree();

	void addItem(VecItem* item);
	List<VecItem*> getItems();
	List<VecItem*> getItems(const BBox& bb);
	List<VecItem*> getItems(const Vec& p, double range);
	VecItem* getNearestItem(VecItem* item);
	VecItem* getNearestItem(const Vec& p);
	void removeItem(VecItem* item);
	void clear();
	int size() const;
};