%ModuleCode
#include <vns/omnetnetworkmodule.h>
%End


class OmnetNetworkModule : public NetworkModule /NoDefaultCtors/ {

%TypeHeaderCode
#include <vns/omnetnetworkmodule.h>
using namespace vns;
%End

%TypeCode
// Convert a Python argv list to a conventional C argc count and argv array.
static char **qtgui_ArgvToC(PyObject *argvlist, int &argc)
{
    char **argv;

    argc = PyList_GET_SIZE(argvlist);

    // Allocate space for two copies of the argument pointers, plus the
    // terminating NULL.
    if ((argv = (char **)sipMalloc(2 * (argc + 1) * sizeof (char *))) == NULL)
        return NULL;

    // Convert the list.
    for (int a = 0; a < argc; ++a)
    {
        char *arg;

        // Get the argument and allocate memory for it.
        if ((arg = PyString_AsString(PyList_GET_ITEM(argvlist, a))) == NULL ||
            (argv[a] = (char *)sipMalloc(strlen(arg) + 1)) == NULL)
            return NULL;

        // Copy the argument and save a pointer to it.
        strcpy(argv[a], arg);
        argv[a + argc + 1] = argv[a];
    }

    argv[argc + argc + 1] = argv[argc] = NULL;

    return argv;
}


// Remove arguments from the Python argv list that have been removed from the
// C argv array.
static void qtgui_UpdatePyArgv(PyObject *argvlist, int argc, char **argv)
{
    for (int a = 0, na = 0; a < argc; ++a)
    {
        // See if it was removed.
        if (argv[na] == argv[a + argc + 1])
            ++na;
        else
            PyList_SetSlice(argvlist, na, na + 1, NULL);
    }
}
%End

public:
	OmnetNetworkModule(SIP_PYLIST argv)[(int &argc, char **argv)];
%MethodCode
        // The Python interface is a list of argument strings that is modified.
        
        int argc;
        char **argv;
        
        // Convert the list.
        if ((argv = qtgui_ArgvToC(a0, argc)) == NULL)
            sipIsErr = 1;
        else
        {
            // Create it now the arguments are right.
            static int nargc = argc;
        
            sipCpp = new sipOmnetNetworkModule(nargc, argv);
        
            // Now modify the original list.
            qtgui_UpdatePyArgv(a0, argc, argv);
        }
%End
	virtual ~OmnetNetworkModule();
	
	void onSimulationStart(const Simulator* simulator);
	void onSimulationStep(const Simulator* simulator);
	void onSimulationStop(const Simulator* simulator);
	void onVehicleCreated(const Simulator* simulator, Vehicle* vehicle);
	void onVehicleRemoved(const Simulator* simulator, Vehicle* vehicle);

};