#ifndef __M_RECAST_PLUGIN_H__
#define __M_RECAST_PLUGIN_H__

#ifdef WIN32
# include <windows.h>
# ifdef M_RECAST_BUILD
#  define EXPORT __declspec(dllexport)
# else
#  define EXPORT __declspec(dllimport)
# endif
#else
# define EXPORT
#endif

#ifdef  M_RECAST_STATIC

#define MPluginStart(x) \
x##Start()

#define MPluginEnd(x)  \
x##End()

#else/*!M_RECAST_STATIC*/

#define MPluginStart(x) \
StartPlugin()

#define MPluginEnd(x)  \
EndPlugin()

#endif/*M_RECAST_STATIC*/

extern "C"
{

EXPORT void MPluginStart(MRecast);
EXPORT void MPluginEnd  (MRecast);

}
#endif/*__M_RECAST_PLUGIN_H__*/