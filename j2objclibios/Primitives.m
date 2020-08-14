//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/Primitives.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "Primitives.h"
#include "java/lang/Boolean.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Short.h"
#include "java/lang/Void.h"
#include "java/lang/reflect/Type.h"

@interface GSONPrimitives ()

- (instancetype)init;

@end

__attribute__((unused)) static void GSONPrimitives_init(GSONPrimitives *self);

__attribute__((unused)) static GSONPrimitives *new_GSONPrimitives_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static GSONPrimitives *create_GSONPrimitives_init();

@implementation GSONPrimitives

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GSONPrimitives_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jboolean)isPrimitiveWithJavaLangReflectType:(id<JavaLangReflectType>)type {
  return GSONPrimitives_isPrimitiveWithJavaLangReflectType_(type);
}

+ (jboolean)isWrapperTypeWithJavaLangReflectType:(id<JavaLangReflectType>)type {
  return GSONPrimitives_isWrapperTypeWithJavaLangReflectType_(type);
}

+ (IOSClass *)wrapWithIOSClass:(IOSClass *)type {
  return GSONPrimitives_wrapWithIOSClass_(type);
}

+ (IOSClass *)unwrapWithIOSClass:(IOSClass *)type {
  return GSONPrimitives_unwrapWithIOSClass_(type);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 2, 1, -1, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x9, 3, 4, -1, 5, -1, -1 },
    { NULL, "LIOSClass;", 0x9, 6, 4, -1, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(isPrimitiveWithJavaLangReflectType:);
  methods[2].selector = @selector(isWrapperTypeWithJavaLangReflectType:);
  methods[3].selector = @selector(wrapWithIOSClass:);
  methods[4].selector = @selector(unwrapWithIOSClass:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "isPrimitive", "LJavaLangReflectType;", "isWrapperType", "wrap", "LIOSClass;", "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/lang/Class<TT;>;", "unwrap" };
  static const J2ObjcClassInfo _GSONPrimitives = { "Primitives", "com.google.gson.internal", ptrTable, methods, NULL, 7, 0x11, 5, 0, -1, -1, -1, -1, -1 };
  return &_GSONPrimitives;
}

@end

void GSONPrimitives_init(GSONPrimitives *self) {
  NSObject_init(self);
}

GSONPrimitives *new_GSONPrimitives_init() {
  J2OBJC_NEW_IMPL(GSONPrimitives, init)
}

GSONPrimitives *create_GSONPrimitives_init() {
  J2OBJC_CREATE_IMPL(GSONPrimitives, init)
}

jboolean GSONPrimitives_isPrimitiveWithJavaLangReflectType_(id<JavaLangReflectType> type) {
  GSONPrimitives_initialize();
  return [type isKindOfClass:[IOSClass class]] && [((IOSClass *) nil_chk(((IOSClass *) cast_chk(type, [IOSClass class])))) isPrimitive];
}

jboolean GSONPrimitives_isWrapperTypeWithJavaLangReflectType_(id<JavaLangReflectType> type) {
  GSONPrimitives_initialize();
  return type == (id) JavaLangInteger_class_() || type == (id) JavaLangFloat_class_() || type == (id) JavaLangByte_class_() || type == (id) JavaLangDouble_class_() || type == (id) JavaLangLong_class_() || type == (id) JavaLangCharacter_class_() || type == (id) JavaLangBoolean_class_() || type == (id) JavaLangShort_class_() || type == (id) JavaLangVoid_class_();
}

IOSClass *GSONPrimitives_wrapWithIOSClass_(IOSClass *type) {
  GSONPrimitives_initialize();
  if (type == [IOSClass intClass]) return JavaLangInteger_class_();
  if (type == [IOSClass floatClass]) return JavaLangFloat_class_();
  if (type == [IOSClass byteClass]) return JavaLangByte_class_();
  if (type == [IOSClass doubleClass]) return JavaLangDouble_class_();
  if (type == [IOSClass longClass]) return JavaLangLong_class_();
  if (type == [IOSClass charClass]) return JavaLangCharacter_class_();
  if (type == [IOSClass booleanClass]) return JavaLangBoolean_class_();
  if (type == [IOSClass shortClass]) return JavaLangShort_class_();
  if (type == [IOSClass voidClass]) return JavaLangVoid_class_();
  return type;
}

IOSClass *GSONPrimitives_unwrapWithIOSClass_(IOSClass *type) {
  GSONPrimitives_initialize();
  if (type == JavaLangInteger_class_()) return [IOSClass intClass];
  if (type == JavaLangFloat_class_()) return [IOSClass floatClass];
  if (type == JavaLangByte_class_()) return [IOSClass byteClass];
  if (type == JavaLangDouble_class_()) return [IOSClass doubleClass];
  if (type == JavaLangLong_class_()) return [IOSClass longClass];
  if (type == JavaLangCharacter_class_()) return [IOSClass charClass];
  if (type == JavaLangBoolean_class_()) return [IOSClass booleanClass];
  if (type == JavaLangShort_class_()) return [IOSClass shortClass];
  if (type == JavaLangVoid_class_()) return [IOSClass voidClass];
  return type;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONPrimitives)