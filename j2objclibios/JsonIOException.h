//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/JsonIOException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JsonIOException")
#ifdef RESTRICT_JsonIOException
#define INCLUDE_ALL_JsonIOException 0
#else
#define INCLUDE_ALL_JsonIOException 1
#endif
#undef RESTRICT_JsonIOException

#if !defined (GSONJsonIOException_) && (INCLUDE_ALL_JsonIOException || defined(INCLUDE_GSONJsonIOException))
#define GSONJsonIOException_

#define RESTRICT_JsonParseException 1
#define INCLUDE_GSONJsonParseException 1
#include "JsonParseException.h"

@class JavaLangThrowable;

/*!
 @brief This exception is raised when Gson was unable to read an input stream
  or write to one.
 @author Inderjeet Singh
 @author Joel Leitch
 */
@interface GSONJsonIOException : GSONJsonParseException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)msg;

- (instancetype)initWithNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)cause;

/*!
 @brief Creates exception with the specified cause.Consider using 
 <code>Throwable)</code> instead if you can describe what happened.
 @param cause root exception that caused this exception to be thrown.
 */
- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONJsonIOException)

FOUNDATION_EXPORT void GSONJsonIOException_initWithNSString_(GSONJsonIOException *self, NSString *msg);

FOUNDATION_EXPORT GSONJsonIOException *new_GSONJsonIOException_initWithNSString_(NSString *msg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONJsonIOException *create_GSONJsonIOException_initWithNSString_(NSString *msg);

FOUNDATION_EXPORT void GSONJsonIOException_initWithNSString_withJavaLangThrowable_(GSONJsonIOException *self, NSString *msg, JavaLangThrowable *cause);

FOUNDATION_EXPORT GSONJsonIOException *new_GSONJsonIOException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONJsonIOException *create_GSONJsonIOException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause);

FOUNDATION_EXPORT void GSONJsonIOException_initWithJavaLangThrowable_(GSONJsonIOException *self, JavaLangThrowable *cause);

FOUNDATION_EXPORT GSONJsonIOException *new_GSONJsonIOException_initWithJavaLangThrowable_(JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONJsonIOException *create_GSONJsonIOException_initWithJavaLangThrowable_(JavaLangThrowable *cause);

J2OBJC_TYPE_LITERAL_HEADER(GSONJsonIOException)

@compatibility_alias ComGoogleGsonJsonIOException GSONJsonIOException;

#endif

#pragma pop_macro("INCLUDE_ALL_JsonIOException")
