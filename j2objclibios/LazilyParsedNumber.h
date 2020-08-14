//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/LazilyParsedNumber.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LazilyParsedNumber")
#ifdef RESTRICT_LazilyParsedNumber
#define INCLUDE_ALL_LazilyParsedNumber 0
#else
#define INCLUDE_ALL_LazilyParsedNumber 1
#endif
#undef RESTRICT_LazilyParsedNumber

#if !defined (GSONLazilyParsedNumber_) && (INCLUDE_ALL_LazilyParsedNumber || defined(INCLUDE_GSONLazilyParsedNumber))
#define GSONLazilyParsedNumber_

/*!
 @brief This class holds a number value that is lazily converted to a specific number type
 @author Inderjeet Singh
 */
@interface GSONLazilyParsedNumber : NSNumber

#pragma mark Public

/*!
 @param value must not be null
 */
- (instancetype)initWithNSString:(NSString *)value;

- (jdouble)doubleValue;

- (jboolean)isEqual:(id)obj;

- (jfloat)floatValue;

- (NSUInteger)hash;

- (jint)intValue;

- (jlong)longLongValue;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONLazilyParsedNumber)

FOUNDATION_EXPORT void GSONLazilyParsedNumber_initWithNSString_(GSONLazilyParsedNumber *self, NSString *value);

FOUNDATION_EXPORT GSONLazilyParsedNumber *new_GSONLazilyParsedNumber_initWithNSString_(NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLazilyParsedNumber *create_GSONLazilyParsedNumber_initWithNSString_(NSString *value);

J2OBJC_TYPE_LITERAL_HEADER(GSONLazilyParsedNumber)

@compatibility_alias ComGoogleGsonInternalLazilyParsedNumber GSONLazilyParsedNumber;

#endif

#pragma pop_macro("INCLUDE_ALL_LazilyParsedNumber")
