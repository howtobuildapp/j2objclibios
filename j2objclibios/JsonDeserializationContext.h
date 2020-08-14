//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/JsonDeserializationContext.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JsonDeserializationContext")
#ifdef RESTRICT_JsonDeserializationContext
#define INCLUDE_ALL_JsonDeserializationContext 0
#else
#define INCLUDE_ALL_JsonDeserializationContext 1
#endif
#undef RESTRICT_JsonDeserializationContext

#if !defined (GSONJsonDeserializationContext_) && (INCLUDE_ALL_JsonDeserializationContext || defined(INCLUDE_GSONJsonDeserializationContext))
#define GSONJsonDeserializationContext_

@class GSONJsonElement;
@protocol JavaLangReflectType;

/*!
 @brief Context for deserialization that is passed to a custom deserializer during invocation of its 
 <code>Type, JsonDeserializationContext)</code>
  method.
 @author Inderjeet Singh
 @author Joel Leitch
 */
@protocol GSONJsonDeserializationContext < JavaObject >

/*!
 @brief Invokes default deserialization on the specified object.It should never be invoked on
  the element received as a parameter of the 
 <code>Type, JsonDeserializationContext)</code> method.
 Doing
  so will result in an infinite loop since Gson will in-turn call the custom deserializer again.
 @param json the parse tree.
 @param typeOfT type of the expected return value.
 @return An object of type typeOfT.
 @throw JsonParseExceptionif the parse tree does not contain expected data.
 */
- (id)deserializeWithGSONJsonElement:(GSONJsonElement *)json
             withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONJsonDeserializationContext)

J2OBJC_TYPE_LITERAL_HEADER(GSONJsonDeserializationContext)

#define ComGoogleGsonJsonDeserializationContext GSONJsonDeserializationContext

#endif

#pragma pop_macro("INCLUDE_ALL_JsonDeserializationContext")