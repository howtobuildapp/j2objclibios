//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory.java
//

#include "ConstructorConstructor.h"
#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonAdapter.h"
#include "JsonAdapterAnnotationTypeAdapterFactory.h"
#include "JsonDeserializer.h"
#include "JsonSerializer.h"
#include "ObjectConstructor.h"
#include "TreeTypeAdapter.h"
#include "TypeAdapter.h"
#include "TypeAdapterFactory.h"
#include "TypeToken.h"
#include "java/lang/IllegalArgumentException.h"

@interface GSONJsonAdapterAnnotationTypeAdapterFactory () {
 @public
  GSONConstructorConstructor *constructorConstructor_;
}

@end

J2OBJC_FIELD_SETTER(GSONJsonAdapterAnnotationTypeAdapterFactory, constructorConstructor_, GSONConstructorConstructor *)

@implementation GSONJsonAdapterAnnotationTypeAdapterFactory

- (instancetype)initWithGSONConstructorConstructor:(GSONConstructorConstructor *)constructorConstructor {
  GSONJsonAdapterAnnotationTypeAdapterFactory_initWithGSONConstructorConstructor_(self, constructorConstructor);
  return self;
}

- (GSONTypeAdapter *)createWithGSONGson:(GSONGson *)gson
                      withGSONTypeToken:(GSONTypeToken *)targetType {
  IOSClass *rawType = [((GSONTypeToken *) nil_chk(targetType)) getRawType];
  id<GSONJsonAdapter> annotation = ((id<GSONJsonAdapter>) [((IOSClass *) nil_chk(rawType)) getAnnotationWithIOSClass:GSONJsonAdapter_class_()]);
  if (annotation == nil) {
    return nil;
  }
  return [self getTypeAdapterWithGSONConstructorConstructor:constructorConstructor_ withGSONGson:gson withGSONTypeToken:targetType withGSONJsonAdapter:annotation];
}

- (GSONTypeAdapter *)getTypeAdapterWithGSONConstructorConstructor:(GSONConstructorConstructor *)constructorConstructor
                                                     withGSONGson:(GSONGson *)gson
                                                withGSONTypeToken:(GSONTypeToken *)type
                                              withGSONJsonAdapter:(id<GSONJsonAdapter>)annotation {
  id instance = [((id<GSONObjectConstructor>) nil_chk([((GSONConstructorConstructor *) nil_chk(constructorConstructor)) getWithGSONTypeToken:GSONTypeToken_getWithIOSClass_([((id<GSONJsonAdapter>) nil_chk(annotation)) value])])) construct];
  GSONTypeAdapter *typeAdapter;
  if ([instance isKindOfClass:[GSONTypeAdapter class]]) {
    typeAdapter = (GSONTypeAdapter *) cast_chk(instance, [GSONTypeAdapter class]);
  }
  else if ([GSONTypeAdapterFactory_class_() isInstance:instance]) {
    typeAdapter = [((id<GSONTypeAdapterFactory>) nil_chk(((id<GSONTypeAdapterFactory>) cast_check(instance, GSONTypeAdapterFactory_class_())))) createWithGSONGson:gson withGSONTypeToken:type];
  }
  else if ([GSONJsonSerializer_class_() isInstance:instance] || [GSONJsonDeserializer_class_() isInstance:instance]) {
    id<GSONJsonSerializer> serializer = [GSONJsonSerializer_class_() isInstance:instance] ? (id<GSONJsonSerializer>) cast_check(instance, GSONJsonSerializer_class_()) : nil;
    id<GSONJsonDeserializer> deserializer = [GSONJsonDeserializer_class_() isInstance:instance] ? (id<GSONJsonDeserializer>) cast_check(instance, GSONJsonDeserializer_class_()) : nil;
    typeAdapter = new_GSONTreeTypeAdapter_initWithGSONJsonSerializer_withGSONJsonDeserializer_withGSONGson_withGSONTypeToken_withGSONTypeAdapterFactory_(serializer, deserializer, gson, type, nil);
  }
  else {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$$$", @"Invalid attempt to bind an instance of ", [[nil_chk(instance) java_getClass] getName], @" as a @JsonAdapter for ", [((GSONTypeToken *) nil_chk(type)) description], @". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."));
  }
  if (typeAdapter != nil && [annotation nullSafe]) {
    typeAdapter = [typeAdapter nullSafe];
  }
  return typeAdapter;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LGSONTypeAdapter;", 0x1, 1, 2, -1, 3, -1, -1 },
    { NULL, "LGSONTypeAdapter;", 0x0, 4, 5, -1, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithGSONConstructorConstructor:);
  methods[1].selector = @selector(createWithGSONGson:withGSONTypeToken:);
  methods[2].selector = @selector(getTypeAdapterWithGSONConstructorConstructor:withGSONGson:withGSONTypeToken:withGSONJsonAdapter:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "constructorConstructor_", "LGSONConstructorConstructor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LGSONConstructorConstructor;", "create", "LGSONGson;LGSONTypeToken;", "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;", "getTypeAdapter", "LGSONConstructorConstructor;LGSONGson;LGSONTypeToken;LGSONJsonAdapter;", "(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter<*>;" };
  static const J2ObjcClassInfo _GSONJsonAdapterAnnotationTypeAdapterFactory = { "JsonAdapterAnnotationTypeAdapterFactory", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x11, 3, 1, -1, -1, -1, -1, -1 };
  return &_GSONJsonAdapterAnnotationTypeAdapterFactory;
}

@end

void GSONJsonAdapterAnnotationTypeAdapterFactory_initWithGSONConstructorConstructor_(GSONJsonAdapterAnnotationTypeAdapterFactory *self, GSONConstructorConstructor *constructorConstructor) {
  NSObject_init(self);
  self->constructorConstructor_ = constructorConstructor;
}

GSONJsonAdapterAnnotationTypeAdapterFactory *new_GSONJsonAdapterAnnotationTypeAdapterFactory_initWithGSONConstructorConstructor_(GSONConstructorConstructor *constructorConstructor) {
  J2OBJC_NEW_IMPL(GSONJsonAdapterAnnotationTypeAdapterFactory, initWithGSONConstructorConstructor_, constructorConstructor)
}

GSONJsonAdapterAnnotationTypeAdapterFactory *create_GSONJsonAdapterAnnotationTypeAdapterFactory_initWithGSONConstructorConstructor_(GSONConstructorConstructor *constructorConstructor) {
  J2OBJC_CREATE_IMPL(GSONJsonAdapterAnnotationTypeAdapterFactory, initWithGSONConstructorConstructor_, constructorConstructor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONJsonAdapterAnnotationTypeAdapterFactory)
