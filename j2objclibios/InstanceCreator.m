//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/InstanceCreator.java
//

#include "InstanceCreator.h"
#include "J2ObjC_source.h"

@interface GSONInstanceCreator : NSObject

@end

@implementation GSONInstanceCreator

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(createInstanceWithJavaLangReflectType:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "createInstance", "LJavaLangReflectType;", "(Ljava/lang/reflect/Type;)TT;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _GSONInstanceCreator = { "InstanceCreator", "com.google.gson", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, 3, -1 };
  return &_GSONInstanceCreator;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GSONInstanceCreator)