//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/bind/MapTypeAdapterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MapTypeAdapterFactory")
#ifdef RESTRICT_MapTypeAdapterFactory
#define INCLUDE_ALL_MapTypeAdapterFactory 0
#else
#define INCLUDE_ALL_MapTypeAdapterFactory 1
#endif
#undef RESTRICT_MapTypeAdapterFactory

#if !defined (GSONMapTypeAdapterFactory_) && (INCLUDE_ALL_MapTypeAdapterFactory || defined(INCLUDE_GSONMapTypeAdapterFactory))
#define GSONMapTypeAdapterFactory_

#define RESTRICT_TypeAdapterFactory 1
#define INCLUDE_GSONTypeAdapterFactory 1
#include "TypeAdapterFactory.h"

@class GSONConstructorConstructor;
@class GSONGson;
@class GSONTypeAdapter;
@class GSONTypeToken;

/*!
 @brief Adapts maps to either JSON objects or JSON arrays.
 <h3>Maps as JSON objects</h3>
  For primitive keys or when complex map key serialization is not enabled, this
  converts Java <code>Maps</code> to JSON Objects. This requires that map keys
  can be serialized as strings; this is insufficient for some key types. For
  example, consider a map whose keys are points on a grid. The default JSON
  form encodes reasonably: @code
     Map<Point, String> original = new LinkedHashMap<Point, String>();
    original.put(new Point(5, 6), "a");
    original.put(new Point(8, 8), "b");
    System.out.println(gson.toJson(original, type)); 
 
@endcode
  The above code prints this JSON object:@code
     {
      "(5,6)": "a",
      "(8,8)": "b"
    } 
 
@endcode
  But GSON is unable to deserialize this value because the JSON string name is
  just the <code>toString()</code> of the map key. Attempting to
  convert the above JSON to an object fails with a parse exception: 
 @code
com.google.gson.JsonParseException: Expecting object found: "(5,6)"
    at com.google.gson.JsonObjectDeserializationVisitor.visitFieldUsingCustomHandler
    at com.google.gson.ObjectNavigator.navigateClassFields
    ...
@endcode
  
 <h3>Maps as JSON arrays</h3>
  An alternative approach taken by this type adapter when it is required and
  complex map key serialization is enabled is to encode maps as arrays of map
  entries. Each map entry is a two element array containing a key and a value.
  This approach is more flexible because any type can be used as the map's key;
  not just strings. But it's also less portable because the receiver of such
  JSON must be aware of the map entry convention. 
 <p>Register this adapter when you are creating your GSON instance. 
 @code
     Gson gson = new GsonBuilder()
      .registerTypeAdapter(Map.class, new MapAsArrayTypeAdapter())
      .create(); 
 
@endcode
  This will change the structure of the JSON emitted by the code above. Now we
  get an array. In this case the arrays elements are map entries: 
 @code
     [
      [
        {
          "x": 5,
          "y": 6
        },
        "a",
      ],
      [
        {
          "x": 8,
          "y": 8
        },
        "b"
      ]    ]  
 
@endcode
  This format will serialize and deserialize just fine as long as this adapter
  is registered.
 */
@interface GSONMapTypeAdapterFactory : NSObject < GSONTypeAdapterFactory > {
 @public
  jboolean complexMapKeySerialization_;
}

#pragma mark Public

- (instancetype)initWithGSONConstructorConstructor:(GSONConstructorConstructor *)constructorConstructor
                                       withBoolean:(jboolean)complexMapKeySerialization;

- (GSONTypeAdapter *)createWithGSONGson:(GSONGson *)gson
                      withGSONTypeToken:(GSONTypeToken *)typeToken;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONMapTypeAdapterFactory)

FOUNDATION_EXPORT void GSONMapTypeAdapterFactory_initWithGSONConstructorConstructor_withBoolean_(GSONMapTypeAdapterFactory *self, GSONConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization);

FOUNDATION_EXPORT GSONMapTypeAdapterFactory *new_GSONMapTypeAdapterFactory_initWithGSONConstructorConstructor_withBoolean_(GSONConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONMapTypeAdapterFactory *create_GSONMapTypeAdapterFactory_initWithGSONConstructorConstructor_withBoolean_(GSONConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization);

J2OBJC_TYPE_LITERAL_HEADER(GSONMapTypeAdapterFactory)

@compatibility_alias ComGoogleGsonInternalBindMapTypeAdapterFactory GSONMapTypeAdapterFactory;

#endif

#pragma pop_macro("INCLUDE_ALL_MapTypeAdapterFactory")
