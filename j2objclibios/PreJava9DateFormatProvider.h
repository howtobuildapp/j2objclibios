//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/PreJava9DateFormatProvider.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PreJava9DateFormatProvider")
#ifdef RESTRICT_PreJava9DateFormatProvider
#define INCLUDE_ALL_PreJava9DateFormatProvider 0
#else
#define INCLUDE_ALL_PreJava9DateFormatProvider 1
#endif
#undef RESTRICT_PreJava9DateFormatProvider

#if !defined (GSONPreJava9DateFormatProvider_) && (INCLUDE_ALL_PreJava9DateFormatProvider || defined(INCLUDE_GSONPreJava9DateFormatProvider))
#define GSONPreJava9DateFormatProvider_

@class JavaTextDateFormat;

/*!
 @brief Provides DateFormats for US locale with patterns which were the default ones before Java 9.
 */
@interface GSONPreJava9DateFormatProvider : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Returns the same DateFormat as <code>DateFormat.getDateInstance(style, Locale.US)</code> in Java 8 or below.
 */
+ (JavaTextDateFormat *)getUSDateFormatWithInt:(jint)style;

/*!
 @brief Returns the same DateFormat as <code>DateFormat.getDateTimeInstance(dateStyle, timeStyle, Locale.US)</code>
  in Java 8 or below.
 */
+ (JavaTextDateFormat *)getUSDateTimeFormatWithInt:(jint)dateStyle
                                           withInt:(jint)timeStyle;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONPreJava9DateFormatProvider)

FOUNDATION_EXPORT void GSONPreJava9DateFormatProvider_init(GSONPreJava9DateFormatProvider *self);

FOUNDATION_EXPORT GSONPreJava9DateFormatProvider *new_GSONPreJava9DateFormatProvider_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONPreJava9DateFormatProvider *create_GSONPreJava9DateFormatProvider_init();

FOUNDATION_EXPORT JavaTextDateFormat *GSONPreJava9DateFormatProvider_getUSDateFormatWithInt_(jint style);

FOUNDATION_EXPORT JavaTextDateFormat *GSONPreJava9DateFormatProvider_getUSDateTimeFormatWithInt_withInt_(jint dateStyle, jint timeStyle);

J2OBJC_TYPE_LITERAL_HEADER(GSONPreJava9DateFormatProvider)

@compatibility_alias ComGoogleGsonInternalPreJava9DateFormatProvider GSONPreJava9DateFormatProvider;

#endif

#pragma pop_macro("INCLUDE_ALL_PreJava9DateFormatProvider")