//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/JsonPrimitive.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JsonPrimitive")
#ifdef RESTRICT_JsonPrimitive
#define INCLUDE_ALL_JsonPrimitive 0
#else
#define INCLUDE_ALL_JsonPrimitive 1
#endif
#undef RESTRICT_JsonPrimitive

#if !defined (GSONJsonPrimitive_) && (INCLUDE_ALL_JsonPrimitive || defined(INCLUDE_GSONJsonPrimitive))
#define GSONJsonPrimitive_

#define RESTRICT_JsonElement 1
#define INCLUDE_GSONJsonElement 1
#include "JsonElement.h"

@class JavaLangBoolean;
@class JavaLangCharacter;
@class JavaMathBigDecimal;
@class JavaMathBigInteger;

/*!
 @brief A class representing a Json primitive value.A primitive value
  is either a String, a Java primitive, or a Java primitive
  wrapper type.
 @author Inderjeet Singh
 @author Joel Leitch
 */
@interface GSONJsonPrimitive : GSONJsonElement

#pragma mark Public

/*!
 @brief Create a primitive containing a boolean value.
 @param bool_ the value to create the primitive with.
 */
- (instancetype)initWithJavaLangBoolean:(JavaLangBoolean *)bool_;

/*!
 @brief Create a primitive containing a character.The character is turned into a one character String
  since Json only supports String.
 @param c the value to create the primitive with.
 */
- (instancetype)initWithJavaLangCharacter:(JavaLangCharacter *)c;

/*!
 @brief Create a primitive containing a <code>Number</code>.
 @param number the value to create the primitive with.
 */
- (instancetype)initWithNSNumber:(NSNumber *)number;

/*!
 @brief Create a primitive containing a String value.
 @param string the value to create the primitive with.
 */
- (instancetype)initWithNSString:(NSString *)string;

/*!
 @brief Returns the same value as primitives are immutable.
 @since 2.8.2
 */
- (GSONJsonPrimitive *)deepCopy;

- (jboolean)isEqual:(id)obj;

/*!
 @brief convenience method to get this element as a <code>BigDecimal</code>.
 @return get this element as a <code>BigDecimal</code>.
 @throw NumberFormatExceptionif the value contained is not a valid <code>BigDecimal</code>.
 */
- (JavaMathBigDecimal *)getAsBigDecimal;

/*!
 @brief convenience method to get this element as a <code>BigInteger</code>.
 @return get this element as a <code>BigInteger</code>.
 @throw NumberFormatExceptionif the value contained is not a valid <code>BigInteger</code>.
 */
- (JavaMathBigInteger *)getAsBigInteger;

/*!
 @brief convenience method to get this element as a boolean value.
 @return get this element as a primitive boolean value.
 */
- (jboolean)getAsBoolean;

- (jbyte)getAsByte;

- (jchar)getAsCharacter;

/*!
 @brief convenience method to get this element as a primitive double.
 @return get this element as a primitive double.
 @throw NumberFormatExceptionif the value contained is not a valid double.
 */
- (jdouble)getAsDouble;

/*!
 @brief convenience method to get this element as a float.
 @return get this element as a float.
 @throw NumberFormatExceptionif the value contained is not a valid float.
 */
- (jfloat)getAsFloat;

/*!
 @brief convenience method to get this element as a primitive integer.
 @return get this element as a primitive integer.
 @throw NumberFormatExceptionif the value contained is not a valid integer.
 */
- (jint)getAsInt;

/*!
 @brief convenience method to get this element as a primitive long.
 @return get this element as a primitive long.
 @throw NumberFormatExceptionif the value contained is not a valid long.
 */
- (jlong)getAsLong;

/*!
 @brief convenience method to get this element as a Number.
 @return get this element as a Number.
 @throw NumberFormatExceptionif the value contained is not a valid Number.
 */
- (NSNumber *)getAsNumber;

/*!
 @brief convenience method to get this element as a primitive short.
 @return get this element as a primitive short.
 @throw NumberFormatExceptionif the value contained is not a valid short value.
 */
- (jshort)getAsShort;

/*!
 @brief convenience method to get this element as a String.
 @return get this element as a String.
 */
- (NSString *)getAsString;

- (NSUInteger)hash;

/*!
 @brief Check whether this primitive contains a boolean value.
 @return true if this primitive contains a boolean value, false otherwise.
 */
- (jboolean)isBoolean;

/*!
 @brief Check whether this primitive contains a Number.
 @return true if this primitive contains a Number, false otherwise.
 */
- (jboolean)isNumber;

/*!
 @brief Check whether this primitive contains a String value.
 @return true if this primitive contains a String value, false otherwise.
 */
- (jboolean)isString;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONJsonPrimitive)

FOUNDATION_EXPORT void GSONJsonPrimitive_initWithJavaLangBoolean_(GSONJsonPrimitive *self, JavaLangBoolean *bool_);

FOUNDATION_EXPORT GSONJsonPrimitive *new_GSONJsonPrimitive_initWithJavaLangBoolean_(JavaLangBoolean *bool_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONJsonPrimitive *create_GSONJsonPrimitive_initWithJavaLangBoolean_(JavaLangBoolean *bool_);

FOUNDATION_EXPORT void GSONJsonPrimitive_initWithNSNumber_(GSONJsonPrimitive *self, NSNumber *number);

FOUNDATION_EXPORT GSONJsonPrimitive *new_GSONJsonPrimitive_initWithNSNumber_(NSNumber *number) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONJsonPrimitive *create_GSONJsonPrimitive_initWithNSNumber_(NSNumber *number);

FOUNDATION_EXPORT void GSONJsonPrimitive_initWithNSString_(GSONJsonPrimitive *self, NSString *string);

FOUNDATION_EXPORT GSONJsonPrimitive *new_GSONJsonPrimitive_initWithNSString_(NSString *string) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONJsonPrimitive *create_GSONJsonPrimitive_initWithNSString_(NSString *string);

FOUNDATION_EXPORT void GSONJsonPrimitive_initWithJavaLangCharacter_(GSONJsonPrimitive *self, JavaLangCharacter *c);

FOUNDATION_EXPORT GSONJsonPrimitive *new_GSONJsonPrimitive_initWithJavaLangCharacter_(JavaLangCharacter *c) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONJsonPrimitive *create_GSONJsonPrimitive_initWithJavaLangCharacter_(JavaLangCharacter *c);

J2OBJC_TYPE_LITERAL_HEADER(GSONJsonPrimitive)

@compatibility_alias ComGoogleGsonJsonPrimitive GSONJsonPrimitive;

#endif

#pragma pop_macro("INCLUDE_ALL_JsonPrimitive")
