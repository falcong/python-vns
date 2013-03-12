
%ModuleCode
#include <vns/list.h>
%End

template<TYPE>
%MappedType List<TYPE> /DocType="list-of-TYPE"/
{
%TypeHeaderCode
#include <vns/list.h>
using namespace vns;
%End

%ConvertFromTypeCode
    // Create the list.
    PyObject *l;

    if ((l = PyList_New(sipCpp->size())) == NULL)
        return NULL;

    // Set the list elements.
    List<TYPE>::Iterator it = sipCpp->begin();
    for(int i=0; it != sipCpp->end(); ++i,it++){
        TYPE *t = new TYPE(*it);
        PyObject *tobj;

        // The explicit (void *) cast allows TYPE to be const.
        if ((tobj = sipConvertFromType(t, sipType_TYPE, sipTransferObj)) == NULL)
        {
            Py_DECREF(l);
            delete t;
            
            return NULL;
        }

        PyList_SET_ITEM(l, i, tobj);
    }

    return l;
%End

%ConvertToTypeCode
    SIP_SSIZE_T len;

    // Check the type if that is all that is required.
    if (sipIsErr == NULL)
    {
        if (!PySequence_Check(sipPy) || (len = PySequence_Size(sipPy)) < 0)
            return 0;

        for (SIP_SSIZE_T i = 0; i < len; ++i)
        {
            PyObject *itm = PySequence_ITEM(sipPy, i);
            bool ok = (itm && sipCanConvertToType(itm, sipType_TYPE, SIP_NOT_NONE));

            Py_XDECREF(itm);

            if (!ok)
                return 0;
        }

        return 1;
    }

    List<TYPE> *ql = new List<TYPE>;
    len = PySequence_Size(sipPy);
 
    for (SIP_SSIZE_T i = 0; i < len; ++i)
    {
        PyObject *itm = PySequence_ITEM(sipPy, i);
        int state;
        TYPE *t = reinterpret_cast<TYPE *>(sipConvertToType(itm, sipType_TYPE, sipTransferObj, SIP_NOT_NONE, &state, sipIsErr));

        Py_DECREF(itm);
 
        if (*sipIsErr)
        {
            sipReleaseType(t, sipType_TYPE, state);

            delete ql;
            return 0;
        }

        ql->append(*t);

        sipReleaseType(t, sipType_TYPE, state);
    }
 
    *sipCppPtr = ql;
 
    return sipGetState(sipTransferObj);
%End
};
// List<TYPE *> is implemented as a Python list.
template<TYPE>
%MappedType List<TYPE *> /DocType="list-of-TYPE"/
{
%TypeHeaderCode
#include <vns/list.h>
using namespace vns;
%End

%ConvertFromTypeCode
    // Create the list.
    PyObject *l;

    if ((l = PyList_New(sipCpp->size())) == NULL)
        return NULL;

    // Set the list elements.
    List<TYPE*>::Iterator it = sipCpp->begin();
    for (int i=0; it != sipCpp->end(); it++,++i){
        TYPE *t = *it;
        PyObject *tobj;

        // The explicit (void *) cast allows TYPE to be const.
        if ((tobj = sipConvertFromType((void *)t, sipType_TYPE, sipTransferObj)) == NULL)
        {
            Py_DECREF(l);
            return NULL;
        }

        PyList_SET_ITEM(l, i, tobj);
    }

    return l;
%End

%ConvertToTypeCode
    SIP_SSIZE_T len;

    // Check the type if that is all that is required.
    if (sipIsErr == NULL)
    {
        if (!PySequence_Check(sipPy) || (len = PySequence_Size(sipPy)) < 0)
            return 0;

        for (SIP_SSIZE_T i = 0; i < len; ++i)
        {
            PyObject *itm = PySequence_ITEM(sipPy, i);
            bool ok = (itm && sipCanConvertToType(itm, sipType_TYPE, 0));

            Py_XDECREF(itm);

            if (!ok)
                return 0;
        }

        return 1;
    }

    List<TYPE *> *ql = new List<TYPE *>;
    len = PySequence_Size(sipPy);
 
    for (SIP_SSIZE_T i = 0; i < len; ++i)
    {
        PyObject *itm = PySequence_ITEM(sipPy, i);
        TYPE *t = reinterpret_cast<TYPE *>(sipConvertToType(itm, sipType_TYPE, sipTransferObj, 0, 0, sipIsErr));

        Py_DECREF(itm);
 
        if (*sipIsErr)
        {
            delete ql;
            return 0;
        }

        ql->append(t);
    }
 
    *sipCppPtr = ql;
 
    return sipGetState(sipTransferObj);
%End
};