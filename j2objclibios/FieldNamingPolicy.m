//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/FieldNamingPolicy.java
//

#include "FieldNamingPolicy.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/reflect/Field.h"
#include "java/util/Locale.h"

#pragma clang diagnostic ignored "-Wprotocol"

__attribute__((unused)) static void GSONFieldNamingPolicy_initWithNSString_withInt_(GSONFieldNamingPolicy *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static GSONFieldNamingPolicy *new_GSONFieldNamingPolicy_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface GSONFieldNamingPolicy_1 : GSONFieldNamingPolicy

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONFieldNamingPolicy_1)

__attribute__((unused)) static void GSONFieldNamingPolicy_1_initWithNSString_withInt_(GSONFieldNamingPolicy_1 *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static GSONFieldNamingPolicy_1 *new_GSONFieldNamingPolicy_1_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface GSONFieldNamingPolicy_2 : GSONFieldNamingPolicy

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONFieldNamingPolicy_2)

__attribute__((unused)) static void GSONFieldNamingPolicy_2_initWithNSString_withInt_(GSONFieldNamingPolicy_2 *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static GSONFieldNamingPolicy_2 *new_GSONFieldNamingPolicy_2_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface GSONFieldNamingPolicy_3 : GSONFieldNamingPolicy

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONFieldNamingPolicy_3)

__attribute__((unused)) static void GSONFieldNamingPolicy_3_initWithNSString_withInt_(GSONFieldNamingPolicy_3 *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static GSONFieldNamingPolicy_3 *new_GSONFieldNamingPolicy_3_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface GSONFieldNamingPolicy_4 : GSONFieldNamingPolicy

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONFieldNamingPolicy_4)

__attribute__((unused)) static void GSONFieldNamingPolicy_4_initWithNSString_withInt_(GSONFieldNamingPolicy_4 *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static GSONFieldNamingPolicy_4 *new_GSONFieldNamingPolicy_4_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface GSONFieldNamingPolicy_5 : GSONFieldNamingPolicy

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONFieldNamingPolicy_5)

__attribute__((unused)) static void GSONFieldNamingPolicy_5_initWithNSString_withInt_(GSONFieldNamingPolicy_5 *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static GSONFieldNamingPolicy_5 *new_GSONFieldNamingPolicy_5_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface GSONFieldNamingPolicy_6 : GSONFieldNamingPolicy

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONFieldNamingPolicy_6)

__attribute__((unused)) static void GSONFieldNamingPolicy_6_initWithNSString_withInt_(GSONFieldNamingPolicy_6 *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static GSONFieldNamingPolicy_6 *new_GSONFieldNamingPolicy_6_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(GSONFieldNamingPolicy)

GSONFieldNamingPolicy *GSONFieldNamingPolicy_values_[6];

@implementation GSONFieldNamingPolicy

+ (NSString *)separateCamelCaseWithNSString:(NSString *)name
                               withNSString:(NSString *)separator {
  return GSONFieldNamingPolicy_separateCamelCaseWithNSString_withNSString_(name, separator);
}

+ (NSString *)upperCaseFirstLetterWithNSString:(NSString *)name {
  return GSONFieldNamingPolicy_upperCaseFirstLetterWithNSString_(name);
}

+ (IOSObjectArray *)values {
  return GSONFieldNamingPolicy_values();
}

+ (GSONFieldNamingPolicy *)valueOfWithNSString:(NSString *)name {
  return GSONFieldNamingPolicy_valueOfWithNSString_(name);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x8, 2, 3, -1, -1, -1, -1 },
    { NULL, "[LGSONFieldNamingPolicy;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGSONFieldNamingPolicy;", 0x9, 4, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(separateCamelCaseWithNSString:withNSString:);
  methods[1].selector = @selector(upperCaseFirstLetterWithNSString:);
  methods[2].selector = @selector(values);
  methods[3].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "IDENTITY", "LGSONFieldNamingPolicy;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "UPPER_CAMEL_CASE", "LGSONFieldNamingPolicy;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "UPPER_CAMEL_CASE_WITH_SPACES", "LGSONFieldNamingPolicy;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "LOWER_CASE_WITH_UNDERSCORES", "LGSONFieldNamingPolicy;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "LOWER_CASE_WITH_DASHES", "LGSONFieldNamingPolicy;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "LOWER_CASE_WITH_DOTS", "LGSONFieldNamingPolicy;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
  };
  static const void *ptrTable[] = { "separateCamelCase", "LNSString;LNSString;", "upperCaseFirstLetter", "LNSString;", "valueOf", &JreEnum(GSONFieldNamingPolicy, IDENTITY), &JreEnum(GSONFieldNamingPolicy, UPPER_CAMEL_CASE), &JreEnum(GSONFieldNamingPolicy, UPPER_CAMEL_CASE_WITH_SPACES), &JreEnum(GSONFieldNamingPolicy, LOWER_CASE_WITH_UNDERSCORES), &JreEnum(GSONFieldNamingPolicy, LOWER_CASE_WITH_DASHES), &JreEnum(GSONFieldNamingPolicy, LOWER_CASE_WITH_DOTS), "Ljava/lang/Enum<Lcom/google/gson/FieldNamingPolicy;>;Lcom/google/gson/FieldNamingStrategy;" };
  static const J2ObjcClassInfo _GSONFieldNamingPolicy = { "FieldNamingPolicy", "com.google.gson", ptrTable, methods, fields, 7, 0x4401, 4, 6, -1, -1, -1, 11, -1 };
  return &_GSONFieldNamingPolicy;
}

+ (void)initialize {
  if (self == [GSONFieldNamingPolicy class]) {
    JreEnum(GSONFieldNamingPolicy, IDENTITY) = new_GSONFieldNamingPolicy_1_initWithNSString_withInt_(@"", 0);
    JreEnum(GSONFieldNamingPolicy, UPPER_CAMEL_CASE) = new_GSONFieldNamingPolicy_2_initWithNSString_withInt_(@"", 1);
    JreEnum(GSONFieldNamingPolicy, UPPER_CAMEL_CASE_WITH_SPACES) = new_GSONFieldNamingPolicy_3_initWithNSString_withInt_(@"", 2);
    JreEnum(GSONFieldNamingPolicy, LOWER_CASE_WITH_UNDERSCORES) = new_GSONFieldNamingPolicy_4_initWithNSString_withInt_(@"", 3);
    JreEnum(GSONFieldNamingPolicy, LOWER_CASE_WITH_DASHES) = new_GSONFieldNamingPolicy_5_initWithNSString_withInt_(@"", 4);
    JreEnum(GSONFieldNamingPolicy, LOWER_CASE_WITH_DOTS) = new_GSONFieldNamingPolicy_6_initWithNSString_withInt_(@"", 5);
    J2OBJC_SET_INITIALIZED(GSONFieldNamingPolicy)
  }
}

@end

void GSONFieldNamingPolicy_initWithNSString_withInt_(GSONFieldNamingPolicy *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

GSONFieldNamingPolicy *new_GSONFieldNamingPolicy_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(GSONFieldNamingPolicy, initWithNSString_withInt_, __name, __ordinal)
}

NSString *GSONFieldNamingPolicy_separateCamelCaseWithNSString_withNSString_(NSString *name, NSString *separator) {
  GSONFieldNamingPolicy_initialize();
  JavaLangStringBuilder *translation = new_JavaLangStringBuilder_init();
  for (jint i = 0, length = [((NSString *) nil_chk(name)) java_length]; i < length; i++) {
    jchar character = [name charAtWithInt:i];
    if (JavaLangCharacter_isUpperCaseWithChar_(character) && [translation java_length] != 0) {
      (void) [translation appendWithNSString:separator];
    }
    (void) [translation appendWithChar:character];
  }
  return [translation description];
}

NSString *GSONFieldNamingPolicy_upperCaseFirstLetterWithNSString_(NSString *name) {
  GSONFieldNamingPolicy_initialize();
  jint firstLetterIndex = 0;
  jint limit = [((NSString *) nil_chk(name)) java_length] - 1;
  for (; !JavaLangCharacter_isLetterWithChar_([name charAtWithInt:firstLetterIndex]) && firstLetterIndex < limit; ++firstLetterIndex) ;
  jchar firstLetter = [name charAtWithInt:firstLetterIndex];
  if (JavaLangCharacter_isUpperCaseWithChar_(firstLetter)) {
    return name;
  }
  jchar uppercased = JavaLangCharacter_toUpperCaseWithChar_(firstLetter);
  if (firstLetterIndex == 0) {
    return JreStrcat("C$", uppercased, [name java_substring:1]);
  }
  return JreStrcat("$C$", [name java_substring:0 endIndex:firstLetterIndex], uppercased, [name java_substring:firstLetterIndex + 1]);
}

IOSObjectArray *GSONFieldNamingPolicy_values() {
  GSONFieldNamingPolicy_initialize();
  return [IOSObjectArray arrayWithObjects:GSONFieldNamingPolicy_values_ count:6 type:GSONFieldNamingPolicy_class_()];
}

GSONFieldNamingPolicy *GSONFieldNamingPolicy_valueOfWithNSString_(NSString *name) {
  GSONFieldNamingPolicy_initialize();
  for (int i = 0; i < 6; i++) {
    GSONFieldNamingPolicy *e = GSONFieldNamingPolicy_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

GSONFieldNamingPolicy *GSONFieldNamingPolicy_fromOrdinal(NSUInteger ordinal) {
  GSONFieldNamingPolicy_initialize();
  if (ordinal >= 6) {
    return nil;
  }
  return GSONFieldNamingPolicy_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONFieldNamingPolicy)

@implementation GSONFieldNamingPolicy_1

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f {
  return [((JavaLangReflectField *) nil_chk(f)) getName];
}

- (void)dealloc {
  JreCheckFinalize(self, [GSONFieldNamingPolicy_1 class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(translateNameWithJavaLangReflectField:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "translateName", "LJavaLangReflectField;", "LGSONFieldNamingPolicy;" };
  static const J2ObjcClassInfo _GSONFieldNamingPolicy_1 = { "", "com.google.gson", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 2, -1, -1, -1, -1 };
  return &_GSONFieldNamingPolicy_1;
}

@end

void GSONFieldNamingPolicy_1_initWithNSString_withInt_(GSONFieldNamingPolicy_1 *self, NSString *__name, jint __ordinal) {
  GSONFieldNamingPolicy_initWithNSString_withInt_(self, __name, __ordinal);
}

GSONFieldNamingPolicy_1 *new_GSONFieldNamingPolicy_1_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(GSONFieldNamingPolicy_1, initWithNSString_withInt_, __name, __ordinal)
}

@implementation GSONFieldNamingPolicy_2

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f {
  return GSONFieldNamingPolicy_upperCaseFirstLetterWithNSString_([((JavaLangReflectField *) nil_chk(f)) getName]);
}

- (void)dealloc {
  JreCheckFinalize(self, [GSONFieldNamingPolicy_2 class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(translateNameWithJavaLangReflectField:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "translateName", "LJavaLangReflectField;", "LGSONFieldNamingPolicy;" };
  static const J2ObjcClassInfo _GSONFieldNamingPolicy_2 = { "", "com.google.gson", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 2, -1, -1, -1, -1 };
  return &_GSONFieldNamingPolicy_2;
}

@end

void GSONFieldNamingPolicy_2_initWithNSString_withInt_(GSONFieldNamingPolicy_2 *self, NSString *__name, jint __ordinal) {
  GSONFieldNamingPolicy_initWithNSString_withInt_(self, __name, __ordinal);
}

GSONFieldNamingPolicy_2 *new_GSONFieldNamingPolicy_2_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(GSONFieldNamingPolicy_2, initWithNSString_withInt_, __name, __ordinal)
}

@implementation GSONFieldNamingPolicy_3

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f {
  return GSONFieldNamingPolicy_upperCaseFirstLetterWithNSString_(GSONFieldNamingPolicy_separateCamelCaseWithNSString_withNSString_([((JavaLangReflectField *) nil_chk(f)) getName], @" "));
}

- (void)dealloc {
  JreCheckFinalize(self, [GSONFieldNamingPolicy_3 class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(translateNameWithJavaLangReflectField:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "translateName", "LJavaLangReflectField;", "LGSONFieldNamingPolicy;" };
  static const J2ObjcClassInfo _GSONFieldNamingPolicy_3 = { "", "com.google.gson", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 2, -1, -1, -1, -1 };
  return &_GSONFieldNamingPolicy_3;
}

@end

void GSONFieldNamingPolicy_3_initWithNSString_withInt_(GSONFieldNamingPolicy_3 *self, NSString *__name, jint __ordinal) {
  GSONFieldNamingPolicy_initWithNSString_withInt_(self, __name, __ordinal);
}

GSONFieldNamingPolicy_3 *new_GSONFieldNamingPolicy_3_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(GSONFieldNamingPolicy_3, initWithNSString_withInt_, __name, __ordinal)
}

@implementation GSONFieldNamingPolicy_4

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f {
  return [((NSString *) nil_chk(GSONFieldNamingPolicy_separateCamelCaseWithNSString_withNSString_([((JavaLangReflectField *) nil_chk(f)) getName], @"_"))) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)];
}

- (void)dealloc {
  JreCheckFinalize(self, [GSONFieldNamingPolicy_4 class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(translateNameWithJavaLangReflectField:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "translateName", "LJavaLangReflectField;", "LGSONFieldNamingPolicy;" };
  static const J2ObjcClassInfo _GSONFieldNamingPolicy_4 = { "", "com.google.gson", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 2, -1, -1, -1, -1 };
  return &_GSONFieldNamingPolicy_4;
}

@end

void GSONFieldNamingPolicy_4_initWithNSString_withInt_(GSONFieldNamingPolicy_4 *self, NSString *__name, jint __ordinal) {
  GSONFieldNamingPolicy_initWithNSString_withInt_(self, __name, __ordinal);
}

GSONFieldNamingPolicy_4 *new_GSONFieldNamingPolicy_4_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(GSONFieldNamingPolicy_4, initWithNSString_withInt_, __name, __ordinal)
}

@implementation GSONFieldNamingPolicy_5

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f {
  return [((NSString *) nil_chk(GSONFieldNamingPolicy_separateCamelCaseWithNSString_withNSString_([((JavaLangReflectField *) nil_chk(f)) getName], @"-"))) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)];
}

- (void)dealloc {
  JreCheckFinalize(self, [GSONFieldNamingPolicy_5 class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(translateNameWithJavaLangReflectField:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "translateName", "LJavaLangReflectField;", "LGSONFieldNamingPolicy;" };
  static const J2ObjcClassInfo _GSONFieldNamingPolicy_5 = { "", "com.google.gson", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 2, -1, -1, -1, -1 };
  return &_GSONFieldNamingPolicy_5;
}

@end

void GSONFieldNamingPolicy_5_initWithNSString_withInt_(GSONFieldNamingPolicy_5 *self, NSString *__name, jint __ordinal) {
  GSONFieldNamingPolicy_initWithNSString_withInt_(self, __name, __ordinal);
}

GSONFieldNamingPolicy_5 *new_GSONFieldNamingPolicy_5_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(GSONFieldNamingPolicy_5, initWithNSString_withInt_, __name, __ordinal)
}

@implementation GSONFieldNamingPolicy_6

- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f {
  return [((NSString *) nil_chk(GSONFieldNamingPolicy_separateCamelCaseWithNSString_withNSString_([((JavaLangReflectField *) nil_chk(f)) getName], @"."))) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)];
}

- (void)dealloc {
  JreCheckFinalize(self, [GSONFieldNamingPolicy_6 class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(translateNameWithJavaLangReflectField:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "translateName", "LJavaLangReflectField;", "LGSONFieldNamingPolicy;" };
  static const J2ObjcClassInfo _GSONFieldNamingPolicy_6 = { "", "com.google.gson", ptrTable, methods, NULL, 7, 0xc018, 1, 0, 2, -1, -1, -1, -1 };
  return &_GSONFieldNamingPolicy_6;
}

@end

void GSONFieldNamingPolicy_6_initWithNSString_withInt_(GSONFieldNamingPolicy_6 *self, NSString *__name, jint __ordinal) {
  GSONFieldNamingPolicy_initWithNSString_withInt_(self, __name, __ordinal);
}

GSONFieldNamingPolicy_6 *new_GSONFieldNamingPolicy_6_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(GSONFieldNamingPolicy_6, initWithNSString_withInt_, __name, __ordinal)
}
