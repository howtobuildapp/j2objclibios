//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libservice/execute/Request.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Request")
#ifdef RESTRICT_Request
#define INCLUDE_ALL_Request 0
#else
#define INCLUDE_ALL_Request 1
#endif
#undef RESTRICT_Request

#if !defined (HTBARequest_) && (INCLUDE_ALL_Request || defined(INCLUDE_HTBARequest))
#define HTBARequest_

@protocol JavaUtilMap;

@interface HTBARequest : NSObject

#pragma mark Public

- (NSString *)getKindString;

- (id<JavaUtilMap>)getParams;

- (jint)getTimeout;

- (void)setTimeoutWithInt:(jint)timeout;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(HTBARequest)

FOUNDATION_EXPORT void HTBARequest_init(HTBARequest *self);

J2OBJC_TYPE_LITERAL_HEADER(HTBARequest)

@compatibility_alias ComGithubHowtobuildappLibserviceExecuteRequest HTBARequest;

#endif

#pragma pop_macro("INCLUDE_ALL_Request")
