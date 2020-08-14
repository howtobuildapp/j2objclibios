//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/LongSerializationPolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LongSerializationPolicy")
#ifdef RESTRICT_LongSerializationPolicy
#define INCLUDE_ALL_LongSerializationPolicy 0
#else
#define INCLUDE_ALL_LongSerializationPolicy 1
#endif
#undef RESTRICT_LongSerializationPolicy

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GSONLongSerializationPolicy_) && (INCLUDE_ALL_LongSerializationPolicy || defined(INCLUDE_GSONLongSerializationPolicy))
#define GSONLongSerializationPolicy_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class GSONJsonElement;
@class IOSObjectArray;
@class JavaLangLong;

typedef NS_ENUM(NSUInteger, GSONLongSerializationPolicy_Enum) {
  GSONLongSerializationPolicy_Enum_DEFAULT = 0,
  GSONLongSerializationPolicy_Enum_STRING = 1,
};

/*!
 @brief Defines the expected format for a <code>long</code> or <code>Long</code> type when its serialized.
 @since 1.3
 @author Inderjeet Singh
 @author Joel Leitch
 */
@interface GSONLongSerializationPolicy : JavaLangEnum

#pragma mark Public

/*!
 @brief Serialize this <code>value</code> using this serialization policy.
 @param value the long value to be serialized into a <code>JsonElement</code>
 @return the serialized version of <code>value</code>
 */
- (GSONJsonElement *)serializeWithJavaLangLong:(JavaLangLong *)value;

+ (GSONLongSerializationPolicy *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

@end

J2OBJC_STATIC_INIT(GSONLongSerializationPolicy)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT GSONLongSerializationPolicy *GSONLongSerializationPolicy_values_[];

/*!
 @brief This is the "default" serialization policy that will output a <code>long</code> object as a JSON
  number.For example, assume an object has a long field named "f" then the serialized output
  would be: 
 <code>{"f":123}</code>.
 */
inline GSONLongSerializationPolicy *GSONLongSerializationPolicy_get_DEFAULT();
J2OBJC_ENUM_CONSTANT(GSONLongSerializationPolicy, DEFAULT)

/*!
 @brief Serializes a long value as a quoted string.For example, assume an object has a long field 
  named "f" then the serialized output would be: 
 <code>{"f":"123"}</code>.
 */
inline GSONLongSerializationPolicy *GSONLongSerializationPolicy_get_STRING();
J2OBJC_ENUM_CONSTANT(GSONLongSerializationPolicy, STRING)

FOUNDATION_EXPORT IOSObjectArray *GSONLongSerializationPolicy_values();

FOUNDATION_EXPORT GSONLongSerializationPolicy *GSONLongSerializationPolicy_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT GSONLongSerializationPolicy *GSONLongSerializationPolicy_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(GSONLongSerializationPolicy)

@compatibility_alias ComGoogleGsonLongSerializationPolicy GSONLongSerializationPolicy;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_LongSerializationPolicy")
