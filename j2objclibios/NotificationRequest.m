//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libservice/platform/NotificationRequest.java
//

#include "J2ObjC_source.h"
#include "NotificationRequest.h"
#include "Request.h"

@interface HTBANotificationRequest () {
 @public
  NSString *notificationName_;
}

@end

J2OBJC_FIELD_SETTER(HTBANotificationRequest, notificationName_, NSString *)

@implementation HTBANotificationRequest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  HTBANotificationRequest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getNotificationName {
  return notificationName_;
}

- (void)setNotificationNameWithNSString:(NSString *)notificationName {
  self->notificationName_ = notificationName;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getNotificationName);
  methods[2].selector = @selector(setNotificationNameWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "notificationName_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setNotificationName", "LNSString;" };
  static const J2ObjcClassInfo _HTBANotificationRequest = { "NotificationRequest", "com.github.howtobuildapp.libservice.platform", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_HTBANotificationRequest;
}

@end

void HTBANotificationRequest_init(HTBANotificationRequest *self) {
  HTBARequest_init(self);
}

HTBANotificationRequest *new_HTBANotificationRequest_init() {
  J2OBJC_NEW_IMPL(HTBANotificationRequest, init)
}

HTBANotificationRequest *create_HTBANotificationRequest_init() {
  J2OBJC_CREATE_IMPL(HTBANotificationRequest, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(HTBANotificationRequest)
