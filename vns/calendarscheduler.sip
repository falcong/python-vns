%ModuleCode
#include <vns/calendarscheduler.h>
%End


class CalendarScheduler {

%TypeHeaderCode
#include <vns/calendarscheduler.h>
using namespace vns;
%End

public:
	CalendarScheduler(double dt,unsigned int tableSize);
	virtual ~CalendarScheduler();

	void print();
	void schedule(Event* event );
	void invokeEvents(double start,double dt);
	int getNumberOfEvents() const;
	bool isEmpty() const;
	void clearEvents();
	
	void schedule(double time, SIP_PYCALLABLE cb , ...);
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

