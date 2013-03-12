
%ModuleCode
#include <vns/visualizer.h>
%End

class Visualizer {

%TypeHeaderCode
#include <vns/visualizer.h>
using namespace vns;
%End

public:

	enum Type {Viewer2D,ViewerOSG};

	Visualizer(Simulator* simulator, Visualizer::Type type=Visualizer::Viewer2D);
	virtual ~Visualizer();

	int show();
	void setTitle(const char* title);
	//void setPainter(Painter* painter);
	//void setInputEventHandler(InputEventHandler* handler);
	void setMaximized(bool maximized);
	void setSize(int width,int height);
	void start(bool fast=false);
};