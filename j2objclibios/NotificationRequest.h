//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libservice/platform/NotificationRequest.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NotificationRequest")
#ifdef RESTRICT_NotificationRequest
#define INCLUDE_ALL_NotificationRequest 0
#else
#define INCLUDE_ALL_NotificationRequest 1
#endif
#undef RESTRICT_NotificationRequest

#if !defined (HTBANotificationRequest_) && (INCLUDE_ALL_NotificationRequest || defined(INCLUDE_HTBANotificationRequest))
#define HTBANotificationRequest_

#define RESTRICT_Request 1
#define INCLUDE_HTBARequest 1
#include "Request.h"

@interface HTBANotificationRequest : HTBARequest

#pragma mark Public

- (instancetype)init;

- (NSString *)getNotificationName;

- (void)setNotificationNameWithNSString:(NSString *)notificationName;

@end

J2OBJC_EMPTY_STATIC_INIT(HTBANotificationRequest)

FOUNDATION_EXPORT void HTBANotificationRequest_init(HTBANotificationRequest *self);

FOUNDATION_EXPORT HTBANotificationRequest *new_HTBANotificationRequest_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT HTBANotificationRequest *create_HTBANotificationRequest_init();

J2OBJC_TYPE_LITERAL_HEADER(HTBANotificationRequest)

@compatibility_alias ComGithubHowtobuildappLibservicePlatformNotificationRequest HTBANotificationRequest;

#endif

#pragma pop_macro("INCLUDE_ALL_NotificationRequest")
