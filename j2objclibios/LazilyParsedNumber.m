//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/LazilyParsedNumber.java
//

#include "J2ObjC_source.h"
#include "LazilyParsedNumber.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NumberFormatException.h"
#include "java/math/BigDecimal.h"

@interface GSONLazilyParsedNumber () {
 @public
  NSString *value_;
}

/*!
 @brief If somebody is unlucky enough to have to serialize one of these, serialize
  it as a BigDecimal so that they won't need Gson on the other side to
  deserialize it.
 */
- (id)writeReplace;

@end

J2OBJC_FIELD_SETTER(GSONLazilyParsedNumber, value_, NSString *)

__attribute__((unused)) static id GSONLazilyParsedNumber_writeReplace(GSONLazilyParsedNumber *self);

@implementation GSONLazilyParsedNumber

- (instancetype)initWithNSString:(NSString *)value {
  GSONLazilyParsedNumber_initWithNSString_(self, value);
  return self;
}

- (jint)intValue {
  @try {
    return JavaLangInteger_parseIntWithNSString_(value_);
  }
  @catch (JavaLangNumberFormatException *e) {
    @try {
      return (jint) JavaLangLong_parseLongWithNSString_(value_);
    }
    @catch (JavaLangNumberFormatException *nfe) {
      return [new_JavaMathBigDecimal_initWithNSString_(value_) intValue];
    }
  }
}

- (jlong)longLongValue {
  @try {
    return JavaLangLong_parseLongWithNSString_(value_);
  }
  @catch (JavaLangNumberFormatException *e) {
    return [new_JavaMathBigDecimal_initWithNSString_(value_) longLongValue];
  }
}

- (jfloat)floatValue {
  return JavaLangFloat_parseFloatWithNSString_(value_);
}

- (jdouble)doubleValue {
  return JavaLangDouble_parseDoubleWithNSString_(value_);
}

- (NSString *)description {
  return value_;
}

- (id)writeReplace {
  return GSONLazilyParsedNumber_writeReplace(self);
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk(value_)) hash]);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return true;
  }
  if ([obj isKindOfClass:[GSONLazilyParsedNumber class]]) {
    GSONLazilyParsedNumber *other = (GSONLazilyParsedNumber *) cast_chk(obj, [GSONLazilyParsedNumber class]);
    return value_ == ((GSONLazilyParsedNumber *) nil_chk(other))->value_ || [((NSString *) nil_chk(value_)) isEqual:other->value_];
  }
  return false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(intValue);
  methods[2].selector = @selector(longLongValue);
  methods[3].selector = @selector(floatValue);
  methods[4].selector = @selector(doubleValue);
  methods[5].selector = @selector(description);
  methods[6].selector = @selector(writeReplace);
  methods[7].selector = @selector(hash);
  methods[8].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "longValue", "toString", "LJavaIoObjectStreamException;", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _GSONLazilyParsedNumber = { "LazilyParsedNumber", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x11, 9, 1, -1, -1, -1, -1, -1 };
  return &_GSONLazilyParsedNumber;
}

@end

void GSONLazilyParsedNumber_initWithNSString_(GSONLazilyParsedNumber *self, NSString *value) {
  NSNumber_init(self);
  self->value_ = value;
}

GSONLazilyParsedNumber *new_GSONLazilyParsedNumber_initWithNSString_(NSString *value) {
  J2OBJC_NEW_IMPL(GSONLazilyParsedNumber, initWithNSString_, value)
}

GSONLazilyParsedNumber *create_GSONLazilyParsedNumber_initWithNSString_(NSString *value) {
  J2OBJC_CREATE_IMPL(GSONLazilyParsedNumber, initWithNSString_, value)
}

id GSONLazilyParsedNumber_writeReplace(GSONLazilyParsedNumber *self) {
  return new_JavaMathBigDecimal_initWithNSString_(self->value_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONLazilyParsedNumber)
