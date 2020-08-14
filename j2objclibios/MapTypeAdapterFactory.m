//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/bind/MapTypeAdapterFactory.java
//

#include "$Gson$Types.h"
#include "ConstructorConstructor.h"
#include "Gson.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "JsonElement.h"
#include "JsonPrimitive.h"
#include "JsonReader.h"
#include "JsonReaderInternalAccess.h"
#include "JsonSyntaxException.h"
#include "JsonToken.h"
#include "JsonWriter.h"
#include "MapTypeAdapterFactory.h"
#include "ObjectConstructor.h"
#include "Streams.h"
#include "TypeAdapter.h"
#include "TypeAdapterRuntimeTypeWrapper.h"
#include "TypeAdapters.h"
#include "TypeToken.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Boolean.h"
#include "java/lang/reflect/Type.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@class JavaIoReader;

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface GSONMapTypeAdapterFactory () {
 @public
  GSONConstructorConstructor *constructorConstructor_;
}

/*!
 @brief Returns a type adapter that writes the value as a string.
 */
- (GSONTypeAdapter *)getKeyAdapterWithGSONGson:(GSONGson *)context
                       withJavaLangReflectType:(id<JavaLangReflectType>)keyType;

@end

J2OBJC_FIELD_SETTER(GSONMapTypeAdapterFactory, constructorConstructor_, GSONConstructorConstructor *)

__attribute__((unused)) static GSONTypeAdapter *GSONMapTypeAdapterFactory_getKeyAdapterWithGSONGson_withJavaLangReflectType_(GSONMapTypeAdapterFactory *self, GSONGson *context, id<JavaLangReflectType> keyType);

@interface GSONMapTypeAdapterFactory_Adapter : GSONTypeAdapter {
 @public
  GSONMapTypeAdapterFactory *this$0_;
  GSONTypeAdapter *keyTypeAdapter_;
  GSONTypeAdapter *valueTypeAdapter_;
  id<GSONObjectConstructor> constructor_;
}

- (instancetype)initWithGSONMapTypeAdapterFactory:(GSONMapTypeAdapterFactory *)outer$
                                     withGSONGson:(GSONGson *)context
                          withJavaLangReflectType:(id<JavaLangReflectType>)keyType
                              withGSONTypeAdapter:(GSONTypeAdapter *)keyTypeAdapter
                          withJavaLangReflectType:(id<JavaLangReflectType>)valueType
                              withGSONTypeAdapter:(GSONTypeAdapter *)valueTypeAdapter
                        withGSONObjectConstructor:(id<GSONObjectConstructor>)constructor;

- (id<JavaUtilMap>)readWithGSONJsonReader:(GSONJsonReader *)inArg;

- (void)writeWithGSONJsonWriter:(GSONJsonWriter *)outArg
                         withId:(id<JavaUtilMap>)map;

- (NSString *)keyToStringWithGSONJsonElement:(GSONJsonElement *)keyElement;

- (id<JavaUtilMap>)fromJsonWithJavaIoReader:(JavaIoReader *)arg0;

- (id<JavaUtilMap>)fromJsonTreeWithGSONJsonElement:(GSONJsonElement *)arg0;

- (id<JavaUtilMap>)fromJsonWithNSString:(NSString *)arg0;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONMapTypeAdapterFactory_Adapter)

J2OBJC_FIELD_SETTER(GSONMapTypeAdapterFactory_Adapter, keyTypeAdapter_, GSONTypeAdapter *)
J2OBJC_FIELD_SETTER(GSONMapTypeAdapterFactory_Adapter, valueTypeAdapter_, GSONTypeAdapter *)
J2OBJC_FIELD_SETTER(GSONMapTypeAdapterFactory_Adapter, constructor_, id<GSONObjectConstructor>)

__attribute__((unused)) static void GSONMapTypeAdapterFactory_Adapter_initWithGSONMapTypeAdapterFactory_withGSONGson_withJavaLangReflectType_withGSONTypeAdapter_withJavaLangReflectType_withGSONTypeAdapter_withGSONObjectConstructor_(GSONMapTypeAdapterFactory_Adapter *self, GSONMapTypeAdapterFactory *outer$, GSONGson *context, id<JavaLangReflectType> keyType, GSONTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, GSONTypeAdapter *valueTypeAdapter, id<GSONObjectConstructor> constructor);

__attribute__((unused)) static GSONMapTypeAdapterFactory_Adapter *new_GSONMapTypeAdapterFactory_Adapter_initWithGSONMapTypeAdapterFactory_withGSONGson_withJavaLangReflectType_withGSONTypeAdapter_withJavaLangReflectType_withGSONTypeAdapter_withGSONObjectConstructor_(GSONMapTypeAdapterFactory *outer$, GSONGson *context, id<JavaLangReflectType> keyType, GSONTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, GSONTypeAdapter *valueTypeAdapter, id<GSONObjectConstructor> constructor) NS_RETURNS_RETAINED;

__attribute__((unused)) static GSONMapTypeAdapterFactory_Adapter *create_GSONMapTypeAdapterFactory_Adapter_initWithGSONMapTypeAdapterFactory_withGSONGson_withJavaLangReflectType_withGSONTypeAdapter_withJavaLangReflectType_withGSONTypeAdapter_withGSONObjectConstructor_(GSONMapTypeAdapterFactory *outer$, GSONGson *context, id<JavaLangReflectType> keyType, GSONTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, GSONTypeAdapter *valueTypeAdapter, id<GSONObjectConstructor> constructor);

__attribute__((unused)) static NSString *GSONMapTypeAdapterFactory_Adapter_keyToStringWithGSONJsonElement_(GSONMapTypeAdapterFactory_Adapter *self, GSONJsonElement *keyElement);

J2OBJC_TYPE_LITERAL_HEADER(GSONMapTypeAdapterFactory_Adapter)

@implementation GSONMapTypeAdapterFactory

- (instancetype)initWithGSONConstructorConstructor:(GSONConstructorConstructor *)constructorConstructor
                                       withBoolean:(jboolean)complexMapKeySerialization {
  GSONMapTypeAdapterFactory_initWithGSONConstructorConstructor_withBoolean_(self, constructorConstructor, complexMapKeySerialization);
  return self;
}

- (GSONTypeAdapter *)createWithGSONGson:(GSONGson *)gson
                      withGSONTypeToken:(GSONTypeToken *)typeToken {
  id<JavaLangReflectType> type = [((GSONTypeToken *) nil_chk(typeToken)) getType];
  IOSClass *rawType = [typeToken getRawType];
  if (![JavaUtilMap_class_() isAssignableFrom:rawType]) {
    return nil;
  }
  IOSClass *rawTypeOfSrc = GSON_Gson_Types_getRawTypeWithJavaLangReflectType_(type);
  IOSObjectArray *keyAndValueTypes = GSON_Gson_Types_getMapKeyAndValueTypesWithJavaLangReflectType_withIOSClass_(type, rawTypeOfSrc);
  GSONTypeAdapter *keyAdapter = GSONMapTypeAdapterFactory_getKeyAdapterWithGSONGson_withJavaLangReflectType_(self, gson, IOSObjectArray_Get(nil_chk(keyAndValueTypes), 0));
  GSONTypeAdapter *valueAdapter = [((GSONGson *) nil_chk(gson)) getAdapterWithGSONTypeToken:GSONTypeToken_getWithJavaLangReflectType_(IOSObjectArray_Get(keyAndValueTypes, 1))];
  id<GSONObjectConstructor> constructor = [((GSONConstructorConstructor *) nil_chk(constructorConstructor_)) getWithGSONTypeToken:typeToken];
  GSONTypeAdapter *result = new_GSONMapTypeAdapterFactory_Adapter_initWithGSONMapTypeAdapterFactory_withGSONGson_withJavaLangReflectType_withGSONTypeAdapter_withJavaLangReflectType_withGSONTypeAdapter_withGSONObjectConstructor_(self, gson, IOSObjectArray_Get(keyAndValueTypes, 0), keyAdapter, IOSObjectArray_Get(keyAndValueTypes, 1), valueAdapter, constructor);
  return result;
}

- (GSONTypeAdapter *)getKeyAdapterWithGSONGson:(GSONGson *)context
                       withJavaLangReflectType:(id<JavaLangReflectType>)keyType {
  return GSONMapTypeAdapterFactory_getKeyAdapterWithGSONGson_withJavaLangReflectType_(self, context, keyType);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LGSONTypeAdapter;", 0x1, 1, 2, -1, 3, -1, -1 },
    { NULL, "LGSONTypeAdapter;", 0x2, 4, 5, -1, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithGSONConstructorConstructor:withBoolean:);
  methods[1].selector = @selector(createWithGSONGson:withGSONTypeToken:);
  methods[2].selector = @selector(getKeyAdapterWithGSONGson:withJavaLangReflectType:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "constructorConstructor_", "LGSONConstructorConstructor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "complexMapKeySerialization_", "Z", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LGSONConstructorConstructor;Z", "create", "LGSONGson;LGSONTypeToken;", "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;", "getKeyAdapter", "LGSONGson;LJavaLangReflectType;", "(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeAdapter<*>;", "LGSONMapTypeAdapterFactory_Adapter;" };
  static const J2ObjcClassInfo _GSONMapTypeAdapterFactory = { "MapTypeAdapterFactory", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x11, 3, 2, -1, 7, -1, -1, -1 };
  return &_GSONMapTypeAdapterFactory;
}

@end

void GSONMapTypeAdapterFactory_initWithGSONConstructorConstructor_withBoolean_(GSONMapTypeAdapterFactory *self, GSONConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization) {
  NSObject_init(self);
  self->constructorConstructor_ = constructorConstructor;
  self->complexMapKeySerialization_ = complexMapKeySerialization;
}

GSONMapTypeAdapterFactory *new_GSONMapTypeAdapterFactory_initWithGSONConstructorConstructor_withBoolean_(GSONConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization) {
  J2OBJC_NEW_IMPL(GSONMapTypeAdapterFactory, initWithGSONConstructorConstructor_withBoolean_, constructorConstructor, complexMapKeySerialization)
}

GSONMapTypeAdapterFactory *create_GSONMapTypeAdapterFactory_initWithGSONConstructorConstructor_withBoolean_(GSONConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization) {
  J2OBJC_CREATE_IMPL(GSONMapTypeAdapterFactory, initWithGSONConstructorConstructor_withBoolean_, constructorConstructor, complexMapKeySerialization)
}

GSONTypeAdapter *GSONMapTypeAdapterFactory_getKeyAdapterWithGSONGson_withJavaLangReflectType_(GSONMapTypeAdapterFactory *self, GSONGson *context, id<JavaLangReflectType> keyType) {
  return (keyType == (id) [IOSClass booleanClass] || keyType == (id) JavaLangBoolean_class_()) ? JreLoadStatic(GSONTypeAdapters, BOOLEAN_AS_STRING) : [((GSONGson *) nil_chk(context)) getAdapterWithGSONTypeToken:GSONTypeToken_getWithJavaLangReflectType_(keyType)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONMapTypeAdapterFactory)

@implementation GSONMapTypeAdapterFactory_Adapter

- (instancetype)initWithGSONMapTypeAdapterFactory:(GSONMapTypeAdapterFactory *)outer$
                                     withGSONGson:(GSONGson *)context
                          withJavaLangReflectType:(id<JavaLangReflectType>)keyType
                              withGSONTypeAdapter:(GSONTypeAdapter *)keyTypeAdapter
                          withJavaLangReflectType:(id<JavaLangReflectType>)valueType
                              withGSONTypeAdapter:(GSONTypeAdapter *)valueTypeAdapter
                        withGSONObjectConstructor:(id<GSONObjectConstructor>)constructor {
  GSONMapTypeAdapterFactory_Adapter_initWithGSONMapTypeAdapterFactory_withGSONGson_withJavaLangReflectType_withGSONTypeAdapter_withJavaLangReflectType_withGSONTypeAdapter_withGSONObjectConstructor_(self, outer$, context, keyType, keyTypeAdapter, valueType, valueTypeAdapter, constructor);
  return self;
}

- (id<JavaUtilMap>)readWithGSONJsonReader:(GSONJsonReader *)inArg {
  GSONJsonToken *peek = [((GSONJsonReader *) nil_chk(inArg)) peek];
  if (peek == JreLoadEnum(GSONJsonToken, NULL)) {
    [inArg nextNull];
    return nil;
  }
  id<JavaUtilMap> map = [((id<GSONObjectConstructor>) nil_chk(constructor_)) construct];
  if (peek == JreLoadEnum(GSONJsonToken, BEGIN_ARRAY)) {
    [inArg beginArray];
    while ([inArg hasNext]) {
      [inArg beginArray];
      id key = [((GSONTypeAdapter *) nil_chk(keyTypeAdapter_)) readWithGSONJsonReader:inArg];
      id value = [((GSONTypeAdapter *) nil_chk(valueTypeAdapter_)) readWithGSONJsonReader:inArg];
      id replaced = [((id<JavaUtilMap>) nil_chk(map)) putWithId:key withId:value];
      if (replaced != nil) {
        @throw new_GSONJsonSyntaxException_initWithNSString_(JreStrcat("$@", @"duplicate key: ", key));
      }
      [inArg endArray];
    }
    [inArg endArray];
  }
  else {
    [inArg beginObject];
    while ([inArg hasNext]) {
      [((GSONJsonReaderInternalAccess *) nil_chk(JreLoadStatic(GSONJsonReaderInternalAccess, INSTANCE))) promoteNameToValueWithGSONJsonReader:inArg];
      id key = [((GSONTypeAdapter *) nil_chk(keyTypeAdapter_)) readWithGSONJsonReader:inArg];
      id value = [((GSONTypeAdapter *) nil_chk(valueTypeAdapter_)) readWithGSONJsonReader:inArg];
      id replaced = [((id<JavaUtilMap>) nil_chk(map)) putWithId:key withId:value];
      if (replaced != nil) {
        @throw new_GSONJsonSyntaxException_initWithNSString_(JreStrcat("$@", @"duplicate key: ", key));
      }
    }
    [inArg endObject];
  }
  return map;
}

- (void)writeWithGSONJsonWriter:(GSONJsonWriter *)outArg
                         withId:(id<JavaUtilMap>)map {
  if (map == nil) {
    (void) [((GSONJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  if (!this$0_->complexMapKeySerialization_) {
    (void) [((GSONJsonWriter *) nil_chk(outArg)) beginObject];
    for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([map entrySet])) {
      (void) [outArg nameWithNSString:NSString_java_valueOf_([((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey])];
      [((GSONTypeAdapter *) nil_chk(valueTypeAdapter_)) writeWithGSONJsonWriter:outArg withId:[entry_ getValue]];
    }
    (void) [outArg endObject];
    return;
  }
  jboolean hasComplexKeys = false;
  id<JavaUtilList> keys = new_JavaUtilArrayList_initWithInt_([map size]);
  id<JavaUtilList> values = new_JavaUtilArrayList_initWithInt_([map size]);
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([map entrySet])) {
    GSONJsonElement *keyElement = [((GSONTypeAdapter *) nil_chk(keyTypeAdapter_)) toJsonTreeWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]];
    [keys addWithId:keyElement];
    [values addWithId:[entry_ getValue]];
    hasComplexKeys |= ([((GSONJsonElement *) nil_chk(keyElement)) isJsonArray] || [keyElement isJsonObject]);
  }
  if (hasComplexKeys) {
    (void) [((GSONJsonWriter *) nil_chk(outArg)) beginArray];
    for (jint i = 0, size = [keys size]; i < size; i++) {
      (void) [outArg beginArray];
      GSONStreams_writeWithGSONJsonElement_withGSONJsonWriter_([keys getWithInt:i], outArg);
      [((GSONTypeAdapter *) nil_chk(valueTypeAdapter_)) writeWithGSONJsonWriter:outArg withId:[values getWithInt:i]];
      (void) [outArg endArray];
    }
    (void) [outArg endArray];
  }
  else {
    (void) [((GSONJsonWriter *) nil_chk(outArg)) beginObject];
    for (jint i = 0, size = [keys size]; i < size; i++) {
      GSONJsonElement *keyElement = [keys getWithInt:i];
      (void) [outArg nameWithNSString:GSONMapTypeAdapterFactory_Adapter_keyToStringWithGSONJsonElement_(self, keyElement)];
      [((GSONTypeAdapter *) nil_chk(valueTypeAdapter_)) writeWithGSONJsonWriter:outArg withId:[values getWithInt:i]];
    }
    (void) [outArg endObject];
  }
}

- (NSString *)keyToStringWithGSONJsonElement:(GSONJsonElement *)keyElement {
  return GSONMapTypeAdapterFactory_Adapter_keyToStringWithGSONJsonElement_(self, keyElement);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x1, 2, 3, 4, 5, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 4, 8, -1, -1 },
    { NULL, "LNSString;", 0x2, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithGSONMapTypeAdapterFactory:withGSONGson:withJavaLangReflectType:withGSONTypeAdapter:withJavaLangReflectType:withGSONTypeAdapter:withGSONObjectConstructor:);
  methods[1].selector = @selector(readWithGSONJsonReader:);
  methods[2].selector = @selector(writeWithGSONJsonWriter:withId:);
  methods[3].selector = @selector(keyToStringWithGSONJsonElement:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LGSONMapTypeAdapterFactory;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "keyTypeAdapter_", "LGSONTypeAdapter;", .constantValue.asLong = 0, 0x12, -1, -1, 11, -1 },
    { "valueTypeAdapter_", "LGSONTypeAdapter;", .constantValue.asLong = 0, 0x12, -1, -1, 12, -1 },
    { "constructor_", "LGSONObjectConstructor;", .constantValue.asLong = 0, 0x12, -1, -1, 13, -1 },
  };
  static const void *ptrTable[] = { "LGSONGson;LJavaLangReflectType;LGSONTypeAdapter;LJavaLangReflectType;LGSONTypeAdapter;LGSONObjectConstructor;", "(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TK;>;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TV;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;)V", "read", "LGSONJsonReader;", "LJavaIoIOException;", "(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map<TK;TV;>;", "write", "LGSONJsonWriter;LJavaUtilMap;", "(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map<TK;TV;>;)V", "keyToString", "LGSONJsonElement;", "Lcom/google/gson/TypeAdapter<TK;>;", "Lcom/google/gson/TypeAdapter<TV;>;", "Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;", "LGSONMapTypeAdapterFactory;", "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<Ljava/util/Map<TK;TV;>;>;" };
  static const J2ObjcClassInfo _GSONMapTypeAdapterFactory_Adapter = { "Adapter", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x12, 4, 4, 14, -1, -1, 15, -1 };
  return &_GSONMapTypeAdapterFactory_Adapter;
}

@end

void GSONMapTypeAdapterFactory_Adapter_initWithGSONMapTypeAdapterFactory_withGSONGson_withJavaLangReflectType_withGSONTypeAdapter_withJavaLangReflectType_withGSONTypeAdapter_withGSONObjectConstructor_(GSONMapTypeAdapterFactory_Adapter *self, GSONMapTypeAdapterFactory *outer$, GSONGson *context, id<JavaLangReflectType> keyType, GSONTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, GSONTypeAdapter *valueTypeAdapter, id<GSONObjectConstructor> constructor) {
  self->this$0_ = outer$;
  GSONTypeAdapter_init(self);
  self->keyTypeAdapter_ = new_GSONTypeAdapterRuntimeTypeWrapper_initWithGSONGson_withGSONTypeAdapter_withJavaLangReflectType_(context, keyTypeAdapter, keyType);
  self->valueTypeAdapter_ = new_GSONTypeAdapterRuntimeTypeWrapper_initWithGSONGson_withGSONTypeAdapter_withJavaLangReflectType_(context, valueTypeAdapter, valueType);
  self->constructor_ = constructor;
}

GSONMapTypeAdapterFactory_Adapter *new_GSONMapTypeAdapterFactory_Adapter_initWithGSONMapTypeAdapterFactory_withGSONGson_withJavaLangReflectType_withGSONTypeAdapter_withJavaLangReflectType_withGSONTypeAdapter_withGSONObjectConstructor_(GSONMapTypeAdapterFactory *outer$, GSONGson *context, id<JavaLangReflectType> keyType, GSONTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, GSONTypeAdapter *valueTypeAdapter, id<GSONObjectConstructor> constructor) {
  J2OBJC_NEW_IMPL(GSONMapTypeAdapterFactory_Adapter, initWithGSONMapTypeAdapterFactory_withGSONGson_withJavaLangReflectType_withGSONTypeAdapter_withJavaLangReflectType_withGSONTypeAdapter_withGSONObjectConstructor_, outer$, context, keyType, keyTypeAdapter, valueType, valueTypeAdapter, constructor)
}

GSONMapTypeAdapterFactory_Adapter *create_GSONMapTypeAdapterFactory_Adapter_initWithGSONMapTypeAdapterFactory_withGSONGson_withJavaLangReflectType_withGSONTypeAdapter_withJavaLangReflectType_withGSONTypeAdapter_withGSONObjectConstructor_(GSONMapTypeAdapterFactory *outer$, GSONGson *context, id<JavaLangReflectType> keyType, GSONTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, GSONTypeAdapter *valueTypeAdapter, id<GSONObjectConstructor> constructor) {
  J2OBJC_CREATE_IMPL(GSONMapTypeAdapterFactory_Adapter, initWithGSONMapTypeAdapterFactory_withGSONGson_withJavaLangReflectType_withGSONTypeAdapter_withJavaLangReflectType_withGSONTypeAdapter_withGSONObjectConstructor_, outer$, context, keyType, keyTypeAdapter, valueType, valueTypeAdapter, constructor)
}

NSString *GSONMapTypeAdapterFactory_Adapter_keyToStringWithGSONJsonElement_(GSONMapTypeAdapterFactory_Adapter *self, GSONJsonElement *keyElement) {
  if ([((GSONJsonElement *) nil_chk(keyElement)) isJsonPrimitive]) {
    GSONJsonPrimitive *primitive = [keyElement getAsJsonPrimitive];
    if ([((GSONJsonPrimitive *) nil_chk(primitive)) isNumber]) {
      return NSString_java_valueOf_([primitive getAsNumber]);
    }
    else if ([primitive isBoolean]) {
      return JavaLangBoolean_toStringWithBoolean_([primitive getAsBoolean]);
    }
    else if ([primitive isString]) {
      return [primitive getAsString];
    }
    else {
      @throw new_JavaLangAssertionError_init();
    }
  }
  else if ([keyElement isJsonNull]) {
    return @"null";
  }
  else {
    @throw new_JavaLangAssertionError_init();
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONMapTypeAdapterFactory_Adapter)