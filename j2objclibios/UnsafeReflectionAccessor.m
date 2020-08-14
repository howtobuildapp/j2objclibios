//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/reflect/UnsafeReflectionAccessor.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "JsonIOException.h"
#include "ReflectionAccessor.h"
#include "UnsafeReflectionAccessor.h"
#include "java/lang/Boolean.h"
#include "java/lang/Exception.h"
#include "java/lang/Long.h"
#include "java/lang/NoSuchFieldException.h"
#include "java/lang/SecurityException.h"
#include "java/lang/reflect/AccessibleObject.h"
#include "java/lang/reflect/Field.h"
#include "java/lang/reflect/Method.h"

@interface GSONUnsafeReflectionAccessor () {
 @public
  id theUnsafe_;
  JavaLangReflectField *overrideField_;
}

+ (id)getUnsafeInstance;

+ (JavaLangReflectField *)getOverrideField;

@end

J2OBJC_FIELD_SETTER(GSONUnsafeReflectionAccessor, theUnsafe_, id)
J2OBJC_FIELD_SETTER(GSONUnsafeReflectionAccessor, overrideField_, JavaLangReflectField *)

inline IOSClass *GSONUnsafeReflectionAccessor_get_unsafeClass();
inline IOSClass *GSONUnsafeReflectionAccessor_set_unsafeClass(IOSClass *value);
static IOSClass *GSONUnsafeReflectionAccessor_unsafeClass;
J2OBJC_STATIC_FIELD_OBJ(GSONUnsafeReflectionAccessor, unsafeClass, IOSClass *)

__attribute__((unused)) static id GSONUnsafeReflectionAccessor_getUnsafeInstance();

__attribute__((unused)) static JavaLangReflectField *GSONUnsafeReflectionAccessor_getOverrideField();

@implementation GSONUnsafeReflectionAccessor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GSONUnsafeReflectionAccessor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)makeAccessibleWithJavaLangReflectAccessibleObject:(JavaLangReflectAccessibleObject *)ao {
  jboolean success = [self makeAccessibleWithUnsafeWithJavaLangReflectAccessibleObject:ao];
  if (!success) {
    @try {
      [((JavaLangReflectAccessibleObject *) nil_chk(ao)) setAccessibleWithBoolean:true];
    }
    @catch (JavaLangSecurityException *e) {
      @throw new_GSONJsonIOException_initWithNSString_withJavaLangThrowable_(JreStrcat("$@$", @"Gson couldn't modify fields for ", ao, @"\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe."), e);
    }
  }
}

- (jboolean)makeAccessibleWithUnsafeWithJavaLangReflectAccessibleObject:(JavaLangReflectAccessibleObject *)ao {
  if (theUnsafe_ != nil && overrideField_ != nil) {
    @try {
      JavaLangReflectMethod *method = [((IOSClass *) nil_chk(GSONUnsafeReflectionAccessor_unsafeClass)) getMethod:@"objectFieldOffset" parameterTypes:[IOSObjectArray newArrayWithObjects:(id[]){ JavaLangReflectField_class_() } count:1 type:IOSClass_class_()]];
      jlong overrideOffset = [((JavaLangLong *) nil_chk((JavaLangLong *) cast_chk([((JavaLangReflectMethod *) nil_chk(method)) invokeWithId:theUnsafe_ withNSObjectArray:[IOSObjectArray newArrayWithObjects:(id[]){ overrideField_ } count:1 type:NSObject_class_()]], [JavaLangLong class]))) longLongValue];
      JavaLangReflectMethod *putBooleanMethod = [((IOSClass *) nil_chk(GSONUnsafeReflectionAccessor_unsafeClass)) getMethod:@"putBoolean" parameterTypes:[IOSObjectArray newArrayWithObjects:(id[]){ NSObject_class_(), [IOSClass longClass], [IOSClass booleanClass] } count:3 type:IOSClass_class_()]];
      (void) [((JavaLangReflectMethod *) nil_chk(putBooleanMethod)) invokeWithId:theUnsafe_ withNSObjectArray:[IOSObjectArray newArrayWithObjects:(id[]){ ao, JavaLangLong_valueOfWithLong_(overrideOffset), JavaLangBoolean_valueOfWithBoolean_(true) } count:3 type:NSObject_class_()]];
      return true;
    }
    @catch (JavaLangException *ignored) {
    }
  }
  return false;
}

+ (id)getUnsafeInstance {
  return GSONUnsafeReflectionAccessor_getUnsafeInstance();
}

+ (JavaLangReflectField *)getOverrideField {
  return GSONUnsafeReflectionAccessor_getOverrideField();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 2, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0xa, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangReflectField;", 0xa, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(makeAccessibleWithJavaLangReflectAccessibleObject:);
  methods[2].selector = @selector(makeAccessibleWithUnsafeWithJavaLangReflectAccessibleObject:);
  methods[3].selector = @selector(getUnsafeInstance);
  methods[4].selector = @selector(getOverrideField);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "unsafeClass", "LIOSClass;", .constantValue.asLong = 0, 0xa, -1, 3, -1, -1 },
    { "theUnsafe_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "overrideField_", "LJavaLangReflectField;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "makeAccessible", "LJavaLangReflectAccessibleObject;", "makeAccessibleWithUnsafe", &GSONUnsafeReflectionAccessor_unsafeClass };
  static const J2ObjcClassInfo _GSONUnsafeReflectionAccessor = { "UnsafeReflectionAccessor", "com.google.gson.internal.reflect", ptrTable, methods, fields, 7, 0x10, 5, 3, -1, -1, -1, -1, -1 };
  return &_GSONUnsafeReflectionAccessor;
}

@end

void GSONUnsafeReflectionAccessor_init(GSONUnsafeReflectionAccessor *self) {
  GSONReflectionAccessor_init(self);
  self->theUnsafe_ = GSONUnsafeReflectionAccessor_getUnsafeInstance();
  self->overrideField_ = GSONUnsafeReflectionAccessor_getOverrideField();
}

GSONUnsafeReflectionAccessor *new_GSONUnsafeReflectionAccessor_init() {
  J2OBJC_NEW_IMPL(GSONUnsafeReflectionAccessor, init)
}

GSONUnsafeReflectionAccessor *create_GSONUnsafeReflectionAccessor_init() {
  J2OBJC_CREATE_IMPL(GSONUnsafeReflectionAccessor, init)
}

id GSONUnsafeReflectionAccessor_getUnsafeInstance() {
  GSONUnsafeReflectionAccessor_initialize();
  @try {
    GSONUnsafeReflectionAccessor_unsafeClass = IOSClass_forName_(@"sun.misc.Unsafe");
    JavaLangReflectField *unsafeField = [((IOSClass *) nil_chk(GSONUnsafeReflectionAccessor_unsafeClass)) getDeclaredField:@"theUnsafe"];
    [((JavaLangReflectField *) nil_chk(unsafeField)) setAccessibleWithBoolean:true];
    return [unsafeField getWithId:nil];
  }
  @catch (JavaLangException *e) {
    return nil;
  }
}

JavaLangReflectField *GSONUnsafeReflectionAccessor_getOverrideField() {
  GSONUnsafeReflectionAccessor_initialize();
  @try {
    return [JavaLangReflectAccessibleObject_class_() getDeclaredField:@"override"];
  }
  @catch (JavaLangNoSuchFieldException *e) {
    return nil;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONUnsafeReflectionAccessor)