//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ReflectiveTypeAdapterFactory")
#ifdef RESTRICT_ReflectiveTypeAdapterFactory
#define INCLUDE_ALL_ReflectiveTypeAdapterFactory 0
#else
#define INCLUDE_ALL_ReflectiveTypeAdapterFactory 1
#endif
#undef RESTRICT_ReflectiveTypeAdapterFactory

#if !defined (GSONReflectiveTypeAdapterFactory_) && (INCLUDE_ALL_ReflectiveTypeAdapterFactory || defined(INCLUDE_GSONReflectiveTypeAdapterFactory))
#define GSONReflectiveTypeAdapterFactory_

#define RESTRICT_TypeAdapterFactory 1
#define INCLUDE_GSONTypeAdapterFactory 1
#include "TypeAdapterFactory.h"

@class GSONConstructorConstructor;
@class GSONExcluder;
@class GSONGson;
@class GSONJsonAdapterAnnotationTypeAdapterFactory;
@class GSONTypeAdapter;
@class GSONTypeToken;
@class JavaLangReflectField;
@protocol GSONFieldNamingStrategy;

/*!
 @brief Type adapter that reflects over the fields and methods of a class.
 */
@interface GSONReflectiveTypeAdapterFactory : NSObject < GSONTypeAdapterFactory >

#pragma mark Public

- (instancetype)initWithGSONConstructorConstructor:(GSONConstructorConstructor *)constructorConstructor
                       withGSONFieldNamingStrategy:(id<GSONFieldNamingStrategy>)fieldNamingPolicy
                                  withGSONExcluder:(GSONExcluder *)excluder
   withGSONJsonAdapterAnnotationTypeAdapterFactory:(GSONJsonAdapterAnnotationTypeAdapterFactory *)jsonAdapterFactory;

- (GSONTypeAdapter *)createWithGSONGson:(GSONGson *)gson
                      withGSONTypeToken:(GSONTypeToken *)type;

- (jboolean)excludeFieldWithJavaLangReflectField:(JavaLangReflectField *)f
                                     withBoolean:(jboolean)serialize;

#pragma mark Package-Private

+ (jboolean)excludeFieldWithJavaLangReflectField:(JavaLangReflectField *)f
                                     withBoolean:(jboolean)serialize
                                withGSONExcluder:(GSONExcluder *)excluder;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONReflectiveTypeAdapterFactory)

FOUNDATION_EXPORT void GSONReflectiveTypeAdapterFactory_initWithGSONConstructorConstructor_withGSONFieldNamingStrategy_withGSONExcluder_withGSONJsonAdapterAnnotationTypeAdapterFactory_(GSONReflectiveTypeAdapterFactory *self, GSONConstructorConstructor *constructorConstructor, id<GSONFieldNamingStrategy> fieldNamingPolicy, GSONExcluder *excluder, GSONJsonAdapterAnnotationTypeAdapterFactory *jsonAdapterFactory);

FOUNDATION_EXPORT GSONReflectiveTypeAdapterFactory *new_GSONReflectiveTypeAdapterFactory_initWithGSONConstructorConstructor_withGSONFieldNamingStrategy_withGSONExcluder_withGSONJsonAdapterAnnotationTypeAdapterFactory_(GSONConstructorConstructor *constructorConstructor, id<GSONFieldNamingStrategy> fieldNamingPolicy, GSONExcluder *excluder, GSONJsonAdapterAnnotationTypeAdapterFactory *jsonAdapterFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONReflectiveTypeAdapterFactory *create_GSONReflectiveTypeAdapterFactory_initWithGSONConstructorConstructor_withGSONFieldNamingStrategy_withGSONExcluder_withGSONJsonAdapterAnnotationTypeAdapterFactory_(GSONConstructorConstructor *constructorConstructor, id<GSONFieldNamingStrategy> fieldNamingPolicy, GSONExcluder *excluder, GSONJsonAdapterAnnotationTypeAdapterFactory *jsonAdapterFactory);

FOUNDATION_EXPORT jboolean GSONReflectiveTypeAdapterFactory_excludeFieldWithJavaLangReflectField_withBoolean_withGSONExcluder_(JavaLangReflectField *f, jboolean serialize, GSONExcluder *excluder);

J2OBJC_TYPE_LITERAL_HEADER(GSONReflectiveTypeAdapterFactory)

@compatibility_alias ComGoogleGsonInternalBindReflectiveTypeAdapterFactory GSONReflectiveTypeAdapterFactory;

#endif

#if !defined (GSONReflectiveTypeAdapterFactory_BoundField_) && (INCLUDE_ALL_ReflectiveTypeAdapterFactory || defined(INCLUDE_GSONReflectiveTypeAdapterFactory_BoundField))
#define GSONReflectiveTypeAdapterFactory_BoundField_

@class GSONJsonReader;
@class GSONJsonWriter;

@interface GSONReflectiveTypeAdapterFactory_BoundField : NSObject {
 @public
  NSString *name_;
  jboolean serialized_;
  jboolean deserialized_;
}

#pragma mark Protected

- (instancetype)initWithNSString:(NSString *)name
                     withBoolean:(jboolean)serialized
                     withBoolean:(jboolean)deserialized;

#pragma mark Package-Private

- (void)readWithGSONJsonReader:(GSONJsonReader *)reader
                        withId:(id)value;

- (void)writeWithGSONJsonWriter:(GSONJsonWriter *)writer
                         withId:(id)value;

- (jboolean)writeFieldWithId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONReflectiveTypeAdapterFactory_BoundField)

J2OBJC_FIELD_SETTER(GSONReflectiveTypeAdapterFactory_BoundField, name_, NSString *)

FOUNDATION_EXPORT void GSONReflectiveTypeAdapterFactory_BoundField_initWithNSString_withBoolean_withBoolean_(GSONReflectiveTypeAdapterFactory_BoundField *self, NSString *name, jboolean serialized, jboolean deserialized);

J2OBJC_TYPE_LITERAL_HEADER(GSONReflectiveTypeAdapterFactory_BoundField)

#endif

#if !defined (GSONReflectiveTypeAdapterFactory_Adapter_) && (INCLUDE_ALL_ReflectiveTypeAdapterFactory || defined(INCLUDE_GSONReflectiveTypeAdapterFactory_Adapter))
#define GSONReflectiveTypeAdapterFactory_Adapter_

#define RESTRICT_TypeAdapter 1
#define INCLUDE_GSONTypeAdapter 1
#include "TypeAdapter.h"

@class GSONJsonReader;
@class GSONJsonWriter;
@protocol GSONObjectConstructor;
@protocol JavaUtilMap;

@interface GSONReflectiveTypeAdapterFactory_Adapter : GSONTypeAdapter

#pragma mark Public

- (id)readWithGSONJsonReader:(GSONJsonReader *)inArg;

- (void)writeWithGSONJsonWriter:(GSONJsonWriter *)outArg
                         withId:(id)value;

#pragma mark Package-Private

- (instancetype)initWithGSONObjectConstructor:(id<GSONObjectConstructor>)constructor
                              withJavaUtilMap:(id<JavaUtilMap>)boundFields;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONReflectiveTypeAdapterFactory_Adapter)

FOUNDATION_EXPORT void GSONReflectiveTypeAdapterFactory_Adapter_initWithGSONObjectConstructor_withJavaUtilMap_(GSONReflectiveTypeAdapterFactory_Adapter *self, id<GSONObjectConstructor> constructor, id<JavaUtilMap> boundFields);

FOUNDATION_EXPORT GSONReflectiveTypeAdapterFactory_Adapter *new_GSONReflectiveTypeAdapterFactory_Adapter_initWithGSONObjectConstructor_withJavaUtilMap_(id<GSONObjectConstructor> constructor, id<JavaUtilMap> boundFields) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONReflectiveTypeAdapterFactory_Adapter *create_GSONReflectiveTypeAdapterFactory_Adapter_initWithGSONObjectConstructor_withJavaUtilMap_(id<GSONObjectConstructor> constructor, id<JavaUtilMap> boundFields);

J2OBJC_TYPE_LITERAL_HEADER(GSONReflectiveTypeAdapterFactory_Adapter)

#endif

#pragma pop_macro("INCLUDE_ALL_ReflectiveTypeAdapterFactory")
