//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/JsonReaderInternalAccess.java
//

#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonReaderInternalAccess.h"

GSONJsonReaderInternalAccess *GSONJsonReaderInternalAccess_INSTANCE;

@implementation GSONJsonReaderInternalAccess

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GSONJsonReaderInternalAccess_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)promoteNameToValueWithGSONJsonReader:(GSONJsonReader *)reader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(promoteNameToValueWithGSONJsonReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LGSONJsonReaderInternalAccess;", .constantValue.asLong = 0, 0x9, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "promoteNameToValue", "LGSONJsonReader;", "LJavaIoIOException;", &GSONJsonReaderInternalAccess_INSTANCE };
  static const J2ObjcClassInfo _GSONJsonReaderInternalAccess = { "JsonReaderInternalAccess", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x401, 2, 1, -1, -1, -1, -1, -1 };
  return &_GSONJsonReaderInternalAccess;
}

@end

void GSONJsonReaderInternalAccess_init(GSONJsonReaderInternalAccess *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONJsonReaderInternalAccess)