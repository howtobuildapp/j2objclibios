//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/JsonPrimitive.java
//

#include "$Gson$Preconditions.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonElement.h"
#include "JsonPrimitive.h"
#include "LazilyParsedNumber.h"
#include "java/lang/Boolean.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Short.h"
#include "java/math/BigDecimal.h"
#include "java/math/BigInteger.h"

@interface GSONJsonPrimitive () {
 @public
  id value_;
}

/*!
 @brief Returns true if the specified number is an integral type
  (Long, Integer, Short, Byte, BigInteger)
 */
+ (jboolean)isIntegralWithGSONJsonPrimitive:(GSONJsonPrimitive *)primitive;

@end

J2OBJC_FIELD_SETTER(GSONJsonPrimitive, value_, id)

__attribute__((unused)) static jboolean GSONJsonPrimitive_isIntegralWithGSONJsonPrimitive_(GSONJsonPrimitive *primitive);

@implementation GSONJsonPrimitive

- (instancetype)initWithJavaLangBoolean:(JavaLangBoolean *)bool_ {
  GSONJsonPrimitive_initWithJavaLangBoolean_(self, bool_);
  return self;
}

- (instancetype)initWithNSNumber:(NSNumber *)number {
  GSONJsonPrimitive_initWithNSNumber_(self, number);
  return self;
}

- (instancetype)initWithNSString:(NSString *)string {
  GSONJsonPrimitive_initWithNSString_(self, string);
  return self;
}

- (instancetype)initWithJavaLangCharacter:(JavaLangCharacter *)c {
  GSONJsonPrimitive_initWithJavaLangCharacter_(self, c);
  return self;
}

- (GSONJsonPrimitive *)deepCopy {
  return self;
}

- (jboolean)isBoolean {
  return [value_ isKindOfClass:[JavaLangBoolean class]];
}

- (jboolean)getAsBoolean {
  if ([self isBoolean]) {
    return [((JavaLangBoolean *) nil_chk(((JavaLangBoolean *) cast_chk(value_, [JavaLangBoolean class])))) booleanValue];
  }
  return JavaLangBoolean_parseBooleanWithNSString_([self getAsString]);
}

- (jboolean)isNumber {
  return [value_ isKindOfClass:[NSNumber class]];
}

- (NSNumber *)getAsNumber {
  return [value_ isKindOfClass:[NSString class]] ? new_GSONLazilyParsedNumber_initWithNSString_((NSString *) cast_chk(value_, [NSString class])) : (NSNumber *) cast_chk(value_, [NSNumber class]);
}

- (jboolean)isString {
  return [value_ isKindOfClass:[NSString class]];
}

- (NSString *)getAsString {
  if ([self isNumber]) {
    return [((NSNumber *) nil_chk([self getAsNumber])) description];
  }
  else if ([self isBoolean]) {
    return [((JavaLangBoolean *) nil_chk(((JavaLangBoolean *) cast_chk(value_, [JavaLangBoolean class])))) description];
  }
  else {
    return (NSString *) cast_chk(value_, [NSString class]);
  }
}

- (jdouble)getAsDouble {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) doubleValue] : JavaLangDouble_parseDoubleWithNSString_([self getAsString]);
}

- (JavaMathBigDecimal *)getAsBigDecimal {
  return [value_ isKindOfClass:[JavaMathBigDecimal class]] ? (JavaMathBigDecimal *) cast_chk(value_, [JavaMathBigDecimal class]) : new_JavaMathBigDecimal_initWithNSString_([nil_chk(value_) description]);
}

- (JavaMathBigInteger *)getAsBigInteger {
  return [value_ isKindOfClass:[JavaMathBigInteger class]] ? (JavaMathBigInteger *) cast_chk(value_, [JavaMathBigInteger class]) : new_JavaMathBigInteger_initWithNSString_([nil_chk(value_) description]);
}

- (jfloat)getAsFloat {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) floatValue] : JavaLangFloat_parseFloatWithNSString_([self getAsString]);
}

- (jlong)getAsLong {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) longLongValue] : JavaLangLong_parseLongWithNSString_([self getAsString]);
}

- (jshort)getAsShort {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) shortValue] : JavaLangShort_parseShortWithNSString_([self getAsString]);
}

- (jint)getAsInt {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) intValue] : JavaLangInteger_parseIntWithNSString_([self getAsString]);
}

- (jbyte)getAsByte {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) charValue] : JavaLangByte_parseByteWithNSString_([self getAsString]);
}

- (jchar)getAsCharacter {
  return [((NSString *) nil_chk([self getAsString])) charAtWithInt:0];
}

- (NSUInteger)hash {
  if (value_ == nil) {
    return 31;
  }
  if (GSONJsonPrimitive_isIntegralWithGSONJsonPrimitive_(self)) {
    jlong value = [((NSNumber *) nil_chk([self getAsNumber])) longLongValue];
    return (jint) (value ^ (JreURShift64(value, 32)));
  }
  if ([value_ isKindOfClass:[NSNumber class]]) {
    jlong value = JavaLangDouble_doubleToLongBitsWithDouble_([((NSNumber *) nil_chk([self getAsNumber])) doubleValue]);
    return (jint) (value ^ (JreURShift64(value, 32)));
  }
  return ((jint) [value_ hash]);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return true;
  }
  if (obj == nil || [self java_getClass] != [obj java_getClass]) {
    return false;
  }
  GSONJsonPrimitive *other = (GSONJsonPrimitive *) cast_chk(obj, [GSONJsonPrimitive class]);
  if (value_ == nil) {
    return other->value_ == nil;
  }
  if (GSONJsonPrimitive_isIntegralWithGSONJsonPrimitive_(self) && GSONJsonPrimitive_isIntegralWithGSONJsonPrimitive_(other)) {
    return [((NSNumber *) nil_chk([self getAsNumber])) longLongValue] == [((NSNumber *) nil_chk([other getAsNumber])) longLongValue];
  }
  if ([value_ isKindOfClass:[NSNumber class]] && [other->value_ isKindOfClass:[NSNumber class]]) {
    jdouble a = [((NSNumber *) nil_chk([self getAsNumber])) doubleValue];
    jdouble b = [((NSNumber *) nil_chk([other getAsNumber])) doubleValue];
    return a == b || (JavaLangDouble_isNaNWithDouble_(a) && JavaLangDouble_isNaNWithDouble_(b));
  }
  return [value_ isEqual:other->value_];
}

+ (jboolean)isIntegralWithGSONJsonPrimitive:(GSONJsonPrimitive *)primitive {
  return GSONJsonPrimitive_isIntegralWithGSONJsonPrimitive_(primitive);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "LGSONJsonPrimitive;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSNumber;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigDecimal;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "S", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "C", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaLangBoolean:);
  methods[1].selector = @selector(initWithNSNumber:);
  methods[2].selector = @selector(initWithNSString:);
  methods[3].selector = @selector(initWithJavaLangCharacter:);
  methods[4].selector = @selector(deepCopy);
  methods[5].selector = @selector(isBoolean);
  methods[6].selector = @selector(getAsBoolean);
  methods[7].selector = @selector(isNumber);
  methods[8].selector = @selector(getAsNumber);
  methods[9].selector = @selector(isString);
  methods[10].selector = @selector(getAsString);
  methods[11].selector = @selector(getAsDouble);
  methods[12].selector = @selector(getAsBigDecimal);
  methods[13].selector = @selector(getAsBigInteger);
  methods[14].selector = @selector(getAsFloat);
  methods[15].selector = @selector(getAsLong);
  methods[16].selector = @selector(getAsShort);
  methods[17].selector = @selector(getAsInt);
  methods[18].selector = @selector(getAsByte);
  methods[19].selector = @selector(getAsCharacter);
  methods[20].selector = @selector(hash);
  methods[21].selector = @selector(isEqual:);
  methods[22].selector = @selector(isIntegralWithGSONJsonPrimitive:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangBoolean;", "LNSNumber;", "LNSString;", "LJavaLangCharacter;", "hashCode", "equals", "LNSObject;", "isIntegral", "LGSONJsonPrimitive;" };
  static const J2ObjcClassInfo _GSONJsonPrimitive = { "JsonPrimitive", "com.google.gson", ptrTable, methods, fields, 7, 0x11, 23, 1, -1, -1, -1, -1, -1 };
  return &_GSONJsonPrimitive;
}

@end

void GSONJsonPrimitive_initWithJavaLangBoolean_(GSONJsonPrimitive *self, JavaLangBoolean *bool_) {
  GSONJsonElement_init(self);
  self->value_ = GSON_Gson_Preconditions_checkNotNullWithId_(bool_);
}

GSONJsonPrimitive *new_GSONJsonPrimitive_initWithJavaLangBoolean_(JavaLangBoolean *bool_) {
  J2OBJC_NEW_IMPL(GSONJsonPrimitive, initWithJavaLangBoolean_, bool_)
}

GSONJsonPrimitive *create_GSONJsonPrimitive_initWithJavaLangBoolean_(JavaLangBoolean *bool_) {
  J2OBJC_CREATE_IMPL(GSONJsonPrimitive, initWithJavaLangBoolean_, bool_)
}

void GSONJsonPrimitive_initWithNSNumber_(GSONJsonPrimitive *self, NSNumber *number) {
  GSONJsonElement_init(self);
  self->value_ = GSON_Gson_Preconditions_checkNotNullWithId_(number);
}

GSONJsonPrimitive *new_GSONJsonPrimitive_initWithNSNumber_(NSNumber *number) {
  J2OBJC_NEW_IMPL(GSONJsonPrimitive, initWithNSNumber_, number)
}

GSONJsonPrimitive *create_GSONJsonPrimitive_initWithNSNumber_(NSNumber *number) {
  J2OBJC_CREATE_IMPL(GSONJsonPrimitive, initWithNSNumber_, number)
}

void GSONJsonPrimitive_initWithNSString_(GSONJsonPrimitive *self, NSString *string) {
  GSONJsonElement_init(self);
  self->value_ = GSON_Gson_Preconditions_checkNotNullWithId_(string);
}

GSONJsonPrimitive *new_GSONJsonPrimitive_initWithNSString_(NSString *string) {
  J2OBJC_NEW_IMPL(GSONJsonPrimitive, initWithNSString_, string)
}

GSONJsonPrimitive *create_GSONJsonPrimitive_initWithNSString_(NSString *string) {
  J2OBJC_CREATE_IMPL(GSONJsonPrimitive, initWithNSString_, string)
}

void GSONJsonPrimitive_initWithJavaLangCharacter_(GSONJsonPrimitive *self, JavaLangCharacter *c) {
  GSONJsonElement_init(self);
  self->value_ = [((JavaLangCharacter *) nil_chk(GSON_Gson_Preconditions_checkNotNullWithId_(c))) description];
}

GSONJsonPrimitive *new_GSONJsonPrimitive_initWithJavaLangCharacter_(JavaLangCharacter *c) {
  J2OBJC_NEW_IMPL(GSONJsonPrimitive, initWithJavaLangCharacter_, c)
}

GSONJsonPrimitive *create_GSONJsonPrimitive_initWithJavaLangCharacter_(JavaLangCharacter *c) {
  J2OBJC_CREATE_IMPL(GSONJsonPrimitive, initWithJavaLangCharacter_, c)
}

jboolean GSONJsonPrimitive_isIntegralWithGSONJsonPrimitive_(GSONJsonPrimitive *primitive) {
  GSONJsonPrimitive_initialize();
  if ([((GSONJsonPrimitive *) nil_chk(primitive))->value_ isKindOfClass:[NSNumber class]]) {
    NSNumber *number = (NSNumber *) cast_chk(primitive->value_, [NSNumber class]);
    return [number isKindOfClass:[JavaMathBigInteger class]] || [number isKindOfClass:[JavaLangLong class]] || [number isKindOfClass:[JavaLangInteger class]] || [number isKindOfClass:[JavaLangShort class]] || [number isKindOfClass:[JavaLangByte class]];
  }
  return false;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONJsonPrimitive)
