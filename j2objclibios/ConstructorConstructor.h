//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/ConstructorConstructor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ConstructorConstructor")
#ifdef RESTRICT_ConstructorConstructor
#define INCLUDE_ALL_ConstructorConstructor 0
#else
#define INCLUDE_ALL_ConstructorConstructor 1
#endif
#undef RESTRICT_ConstructorConstructor

#if !defined (GSONConstructorConstructor_) && (INCLUDE_ALL_ConstructorConstructor || defined(INCLUDE_GSONConstructorConstructor))
#define GSONConstructorConstructor_

@class GSONTypeToken;
@protocol GSONObjectConstructor;
@protocol JavaUtilMap;

/*!
 @brief Returns a function that can construct an instance of a requested type.
 */
@interface GSONConstructorConstructor : NSObject

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)instanceCreators;

- (id<GSONObjectConstructor>)getWithGSONTypeToken:(GSONTypeToken *)typeToken;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONConstructorConstructor)

FOUNDATION_EXPORT void GSONConstructorConstructor_initWithJavaUtilMap_(GSONConstructorConstructor *self, id<JavaUtilMap> instanceCreators);

FOUNDATION_EXPORT GSONConstructorConstructor *new_GSONConstructorConstructor_initWithJavaUtilMap_(id<JavaUtilMap> instanceCreators) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONConstructorConstructor *create_GSONConstructorConstructor_initWithJavaUtilMap_(id<JavaUtilMap> instanceCreators);

J2OBJC_TYPE_LITERAL_HEADER(GSONConstructorConstructor)

@compatibility_alias ComGoogleGsonInternalConstructorConstructor GSONConstructorConstructor;

#endif

#pragma pop_macro("INCLUDE_ALL_ConstructorConstructor")
