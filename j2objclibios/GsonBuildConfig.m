//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/GsonBuildConfig.java
//

#include "GsonBuildConfig.h"
#include "J2ObjC_source.h"

@interface GSONGsonBuildConfig ()

- (instancetype)init;

@end

__attribute__((unused)) static void GSONGsonBuildConfig_init(GSONGsonBuildConfig *self);

__attribute__((unused)) static GSONGsonBuildConfig *new_GSONGsonBuildConfig_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static GSONGsonBuildConfig *create_GSONGsonBuildConfig_init();

NSString *GSONGsonBuildConfig_VERSION = @"2.8.6";

@implementation GSONGsonBuildConfig

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GSONGsonBuildConfig_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "VERSION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 0, -1, -1 },
  };
  static const void *ptrTable[] = { &GSONGsonBuildConfig_VERSION };
  static const J2ObjcClassInfo _GSONGsonBuildConfig = { "GsonBuildConfig", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x11, 1, 1, -1, -1, -1, -1, -1 };
  return &_GSONGsonBuildConfig;
}

@end

void GSONGsonBuildConfig_init(GSONGsonBuildConfig *self) {
  NSObject_init(self);
}

GSONGsonBuildConfig *new_GSONGsonBuildConfig_init() {
  J2OBJC_NEW_IMPL(GSONGsonBuildConfig, init)
}

GSONGsonBuildConfig *create_GSONGsonBuildConfig_init() {
  J2OBJC_CREATE_IMPL(GSONGsonBuildConfig, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONGsonBuildConfig)
