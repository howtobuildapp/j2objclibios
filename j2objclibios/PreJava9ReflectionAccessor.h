//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/reflect/PreJava9ReflectionAccessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PreJava9ReflectionAccessor")
#ifdef RESTRICT_PreJava9ReflectionAccessor
#define INCLUDE_ALL_PreJava9ReflectionAccessor 0
#else
#define INCLUDE_ALL_PreJava9ReflectionAccessor 1
#endif
#undef RESTRICT_PreJava9ReflectionAccessor

#if !defined (GSONPreJava9ReflectionAccessor_) && (INCLUDE_ALL_PreJava9ReflectionAccessor || defined(INCLUDE_GSONPreJava9ReflectionAccessor))
#define GSONPreJava9ReflectionAccessor_

#define RESTRICT_ReflectionAccessor 1
#define INCLUDE_GSONReflectionAccessor 1
#include "ReflectionAccessor.h"

@class JavaLangReflectAccessibleObject;

/*!
 @brief A basic implementation of <code>ReflectionAccessor</code> which is suitable for Java 8 and below.
 <p>
  This implementation just calls <code>setAccessible(true)</code>, which worked
  fine before Java 9.
 */
@interface GSONPreJava9ReflectionAccessor : GSONReflectionAccessor

#pragma mark Public

/*!
 */
- (void)makeAccessibleWithJavaLangReflectAccessibleObject:(JavaLangReflectAccessibleObject *)ao;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONPreJava9ReflectionAccessor)

FOUNDATION_EXPORT void GSONPreJava9ReflectionAccessor_init(GSONPreJava9ReflectionAccessor *self);

FOUNDATION_EXPORT GSONPreJava9ReflectionAccessor *new_GSONPreJava9ReflectionAccessor_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONPreJava9ReflectionAccessor *create_GSONPreJava9ReflectionAccessor_init();

J2OBJC_TYPE_LITERAL_HEADER(GSONPreJava9ReflectionAccessor)

@compatibility_alias ComGoogleGsonInternalReflectPreJava9ReflectionAccessor GSONPreJava9ReflectionAccessor;

#endif

#pragma pop_macro("INCLUDE_ALL_PreJava9ReflectionAccessor")
