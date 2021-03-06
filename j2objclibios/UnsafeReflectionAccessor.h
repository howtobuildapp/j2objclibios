//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/reflect/UnsafeReflectionAccessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_UnsafeReflectionAccessor")
#ifdef RESTRICT_UnsafeReflectionAccessor
#define INCLUDE_ALL_UnsafeReflectionAccessor 0
#else
#define INCLUDE_ALL_UnsafeReflectionAccessor 1
#endif
#undef RESTRICT_UnsafeReflectionAccessor

#if !defined (GSONUnsafeReflectionAccessor_) && (INCLUDE_ALL_UnsafeReflectionAccessor || defined(INCLUDE_GSONUnsafeReflectionAccessor))
#define GSONUnsafeReflectionAccessor_

#define RESTRICT_ReflectionAccessor 1
#define INCLUDE_GSONReflectionAccessor 1
#include "ReflectionAccessor.h"

@class JavaLangReflectAccessibleObject;

/*!
 @brief An implementation of <code>ReflectionAccessor</code> based on <code>Unsafe</code>.
 <p>
  NOTE: This implementation is designed for Java 9. Although it should work with earlier Java releases, it is better to
  use <code>PreJava9ReflectionAccessor</code> for them.
 */
@interface GSONUnsafeReflectionAccessor : GSONReflectionAccessor

#pragma mark Public

/*!
 */
- (void)makeAccessibleWithJavaLangReflectAccessibleObject:(JavaLangReflectAccessibleObject *)ao;

#pragma mark Package-Private

- (instancetype)init;

- (jboolean)makeAccessibleWithUnsafeWithJavaLangReflectAccessibleObject:(JavaLangReflectAccessibleObject *)ao;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONUnsafeReflectionAccessor)

FOUNDATION_EXPORT void GSONUnsafeReflectionAccessor_init(GSONUnsafeReflectionAccessor *self);

FOUNDATION_EXPORT GSONUnsafeReflectionAccessor *new_GSONUnsafeReflectionAccessor_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONUnsafeReflectionAccessor *create_GSONUnsafeReflectionAccessor_init();

J2OBJC_TYPE_LITERAL_HEADER(GSONUnsafeReflectionAccessor)

@compatibility_alias ComGoogleGsonInternalReflectUnsafeReflectionAccessor GSONUnsafeReflectionAccessor;

#endif

#pragma pop_macro("INCLUDE_ALL_UnsafeReflectionAccessor")
