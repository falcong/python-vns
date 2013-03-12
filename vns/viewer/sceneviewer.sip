
%ModuleCode
#include <vns/sceneviewer.h>
%End

class SceneViewer /Abstract/ {

%TypeHeaderCode
#include <vns/sceneviewer.h>
using namespace vns;
%End

public:
    //SceneViewer( QWidget * parent = 0, const QGLWidget * shareWidget = 0);
    virtual ~SceneViewer();

    virtual const Vec& getCenter() const = 0;
    virtual void setPainter( Painter* painter);
    virtual void setCenter( double x, double y);
    virtual double getScale() const = 0;
    virtual void setScale(double s) = 0;
    virtual Vec mouseToRealWorldCoordinates( int x, int y ) = 0;
    //virtual void setInputEventHandler( InputEventHandler* handler );

    virtual void onLaneObjectCreated(const LaneObject* obj);
    virtual void onLaneObjectRemoved(const LaneObject* obj);
};