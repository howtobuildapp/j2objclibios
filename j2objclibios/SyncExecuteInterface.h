//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libservice/execute/SyncExecuteInterface.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_SyncExecuteInterface")
#ifdef RESTRICT_SyncExecuteInterface
#define INCLUDE_ALL_SyncExecuteInterface 0
#else
#define INCLUDE_ALL_SyncExecuteInterface 1
#endif
#undef RESTRICT_SyncExecuteInterface

#if !defined (HTBASyncExecuteInterface_) && (INCLUDE_ALL_SyncExecuteInterface || defined(INCLUDE_HTBASyncExecuteInterface))
#define HTBASyncExecuteInterface_

@class HTBARequest;
@class HTBAResponse;

@protocol HTBASyncExecuteInterface < JavaObject >

- (HTBAResponse *)executeRequestSyncWithHTBARequest:(HTBARequest *)req;

@end

J2OBJC_EMPTY_STATIC_INIT(HTBASyncExecuteInterface)

J2OBJC_TYPE_LITERAL_HEADER(HTBASyncExecuteInterface)

#define ComGithubHowtobuildappLibserviceExecuteSyncExecuteInterface HTBASyncExecuteInterface

#endif

#pragma pop_macro("INCLUDE_ALL_SyncExecuteInterface")
