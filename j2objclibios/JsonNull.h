//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/JsonNull.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JsonNull")
#ifdef RESTRICT_JsonNull
#define INCLUDE_ALL_JsonNull 0
#else
#define INCLUDE_ALL_JsonNull 1
#endif
#undef RESTRICT_JsonNull

#if !defined (GSONJsonNull_) && (INCLUDE_ALL_JsonNull || defined(INCLUDE_GSONJsonNull))
#define GSONJsonNull_

#define RESTRICT_JsonElement 1
#define INCLUDE_GSONJsonElement 1
#include "JsonElement.h"

/*!
 @brief A class representing a Json <code>null</code> value.
 @author Inderjeet Singh
 @author Joel Leitch
 @since 1.2
 */
@interface GSONJsonNull : GSONJsonElement

#pragma mark Public

/*!
 @brief Creates a new JsonNull object.
 Deprecated since Gson version 1.8. Use <code>INSTANCE</code> instead
 */
- (instancetype)init;

/*!
 @brief Returns the same instance since it is an immutable value
 @since 2.8.2
 */
- (GSONJsonNull *)deepCopy;

/*!
 @brief All instances of JsonNull are the same
 */
- (jboolean)isEqual:(id)other;

/*!
 @brief All instances of JsonNull have the same hash code since they are indistinguishable
 */
- (NSUInteger)hash;

@end

J2OBJC_STATIC_INIT(GSONJsonNull)

/*!
 @brief singleton for JsonNull
 @since 1.8
 */
inline GSONJsonNull *GSONJsonNull_get_INSTANCE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT GSONJsonNull *GSONJsonNull_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(GSONJsonNull, INSTANCE, GSONJsonNull *)

FOUNDATION_EXPORT void GSONJsonNull_init(GSONJsonNull *self);

FOUNDATION_EXPORT GSONJsonNull *new_GSONJsonNull_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONJsonNull *create_GSONJsonNull_init();

J2OBJC_TYPE_LITERAL_HEADER(GSONJsonNull)

@compatibility_alias ComGoogleGsonJsonNull GSONJsonNull;

#endif

#pragma pop_macro("INCLUDE_ALL_JsonNull")
