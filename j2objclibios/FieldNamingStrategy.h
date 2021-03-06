//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/FieldNamingStrategy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_FieldNamingStrategy")
#ifdef RESTRICT_FieldNamingStrategy
#define INCLUDE_ALL_FieldNamingStrategy 0
#else
#define INCLUDE_ALL_FieldNamingStrategy 1
#endif
#undef RESTRICT_FieldNamingStrategy

#if !defined (GSONFieldNamingStrategy_) && (INCLUDE_ALL_FieldNamingStrategy || defined(INCLUDE_GSONFieldNamingStrategy))
#define GSONFieldNamingStrategy_

@class JavaLangReflectField;

/*!
 @brief A mechanism for providing custom field naming in Gson.This allows the client code to translate
  field names into a particular convention that is not supported as a normal Java field
  declaration rules.
 For example, Java does not support "-" characters in a field name.
 @author Inderjeet Singh
 @author Joel Leitch
 @since 1.3
 */
@protocol GSONFieldNamingStrategy < JavaObject >

/*!
 @brief Translates the field name into its JSON field name representation.
 @param f the field object that we are translating
 @return the translated field name.
 @since 1.3
 */
- (NSString *)translateNameWithJavaLangReflectField:(JavaLangReflectField *)f;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONFieldNamingStrategy)

J2OBJC_TYPE_LITERAL_HEADER(GSONFieldNamingStrategy)

#define ComGoogleGsonFieldNamingStrategy GSONFieldNamingStrategy

#endif

#pragma pop_macro("INCLUDE_ALL_FieldNamingStrategy")
