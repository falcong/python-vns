%ModuleCode
#include <vns/eventscheduler.h>
%End


class Event {

%TypeHeaderCode
#include <vns/eventscheduler.h>
using namespace vns;
%End

public:
	Event(double t);
	virtual ~Event();
	double getTime() const;
	virtual void invoke() = 0;
};

%ModuleHeaderCode
#include <vns/eventscheduler.h>
using namespace vns;
class PEvent : public Event {
    private:
    	PyObject* handler;
    	PyObject* args;
    public:
    	void invoke();
    	PEvent(double time,PyObject* h,PyObject* a);
    	virtual ~PEvent();
};
%End

%ModuleCode
#include <vns/eventscheduler.h>
using namespace vns;
void PEvent::invoke(){
	PyObject *res = PyObject_CallObject(handler, args);
	if (res != NULL) {
		Py_DECREF(res);
	}
	Py_DECREF(handler);
	Py_DECREF(args);
}
PEvent::PEvent(double time,PyObject* h,PyObject* a):Event(time),handler(h),args(a){

}
PEvent::~PEvent(){

}
%End


class EventScheduler {

%TypeHeaderCode
#include <vns/eventscheduler.h>
using namespace vns;
%End

public:
    EventScheduler();
    virtual ~EventScheduler();
	virtual void schedule(Event* event ) = 0;
	virtual void invokeEvents(double start,double dt) = 0;
	virtual int getNumberOfEvents() const = 0;
	virtual bool isEmpty() const = 0;
	virtual void clearEvents() = 0;

    void schedule(double time, SIP_PYCALLABLE cb /TransferBack/, ...);
%MethodCode
	int n = PyTuple_Size(sipArgs);
	double time = a0;
	if( PyCallable_Check(a1) ){
		PyObject* object = a1;
		PyObject* args = PyTuple_GetSlice( sipArgs , 2, n );
		Py_INCREF(object);
		Py_INCREF(args);
		PEvent* event = new PEvent(time,object,args);
		sipCpp->schedule(event);
	}
%End

};

