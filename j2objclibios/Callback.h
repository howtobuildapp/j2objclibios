//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libservice/execute/Callback.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Callback")
#ifdef RESTRICT_Callback
#define INCLUDE_ALL_Callback 0
#else
#define INCLUDE_ALL_Callback 1
#endif
#undef RESTRICT_Callback

#if !defined (HTBACallback_) && (INCLUDE_ALL_Callback || defined(INCLUDE_HTBACallback))
#define HTBACallback_

@class HTBARequest;
@class HTBAResponse;

@interface HTBACallback : NSObject

#pragma mark Public

- (instancetype)init;

- (void)onCompleteWithHTBARequest:(HTBARequest *)req
                 withHTBAResponse:(HTBAResponse *)resp;

@end

J2OBJC_EMPTY_STATIC_INIT(HTBACallback)

FOUNDATION_EXPORT void HTBACallback_init(HTBACallback *self);

J2OBJC_TYPE_LITERAL_HEADER(HTBACallback)

@compatibility_alias ComGithubHowtobuildappLibserviceExecuteCallback HTBACallback;

#endif

#pragma pop_macro("INCLUDE_ALL_Callback")
