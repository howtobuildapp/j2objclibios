//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/Streams.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Streams")
#ifdef RESTRICT_Streams
#define INCLUDE_ALL_Streams 0
#else
#define INCLUDE_ALL_Streams 1
#endif
#undef RESTRICT_Streams

#if !defined (GSONStreams_) && (INCLUDE_ALL_Streams || defined(INCLUDE_GSONStreams))
#define GSONStreams_

@class GSONJsonElement;
@class GSONJsonReader;
@class GSONJsonWriter;
@class JavaIoWriter;
@protocol JavaLangAppendable;

/*!
 @brief Reads and writes GSON parse trees over streams.
 */
@interface GSONStreams : NSObject

#pragma mark Public

/*!
 @brief Takes a reader in any state and returns the next value as a JsonElement.
 */
+ (GSONJsonElement *)parseWithGSONJsonReader:(GSONJsonReader *)reader;

/*!
 @brief Writes the JSON element to the writer, recursively.
 */
+ (void)writeWithGSONJsonElement:(GSONJsonElement *)element
              withGSONJsonWriter:(GSONJsonWriter *)writer;

+ (JavaIoWriter *)writerForAppendableWithJavaLangAppendable:(id<JavaLangAppendable>)appendable;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONStreams)

FOUNDATION_EXPORT GSONJsonElement *GSONStreams_parseWithGSONJsonReader_(GSONJsonReader *reader);

FOUNDATION_EXPORT void GSONStreams_writeWithGSONJsonElement_withGSONJsonWriter_(GSONJsonElement *element, GSONJsonWriter *writer);

FOUNDATION_EXPORT JavaIoWriter *GSONStreams_writerForAppendableWithJavaLangAppendable_(id<JavaLangAppendable> appendable);

J2OBJC_TYPE_LITERAL_HEADER(GSONStreams)

@compatibility_alias ComGoogleGsonInternalStreams GSONStreams;

#endif

#pragma pop_macro("INCLUDE_ALL_Streams")
