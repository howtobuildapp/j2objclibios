//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper.java
//

#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonWriter.h"
#include "ReflectiveTypeAdapterFactory.h"
#include "TypeAdapter.h"
#include "TypeAdapterRuntimeTypeWrapper.h"
#include "TypeToken.h"
#include "java/lang/reflect/Type.h"
#include "java/lang/reflect/TypeVariable.h"

@interface GSONTypeAdapterRuntimeTypeWrapper () {
 @public
  GSONGson *context_;
  GSONTypeAdapter *delegate_;
  id<JavaLangReflectType> type_;
}

/*!
 @brief Finds a compatible runtime type if it is more specific
 */
- (id<JavaLangReflectType>)getRuntimeTypeIfMoreSpecificWithJavaLangReflectType:(id<JavaLangReflectType>)type
                                                                        withId:(id)value;

@end

J2OBJC_FIELD_SETTER(GSONTypeAdapterRuntimeTypeWrapper, context_, GSONGson *)
J2OBJC_FIELD_SETTER(GSONTypeAdapterRuntimeTypeWrapper, delegate_, GSONTypeAdapter *)
J2OBJC_FIELD_SETTER(GSONTypeAdapterRuntimeTypeWrapper, type_, id<JavaLangReflectType>)

__attribute__((unused)) static id<JavaLangReflectType> GSONTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(GSONTypeAdapterRuntimeTypeWrapper *self, id<JavaLangReflectType> type, id value);

@implementation GSONTypeAdapterRuntimeTypeWrapper

- (instancetype)initWithGSONGson:(GSONGson *)context
             withGSONTypeAdapter:(GSONTypeAdapter *)delegate
         withJavaLangReflectType:(id<JavaLangReflectType>)type {
  GSONTypeAdapterRuntimeTypeWrapper_initWithGSONGson_withGSONTypeAdapter_withJavaLangReflectType_(self, context, delegate, type);
  return self;
}

- (id)readWithGSONJsonReader:(GSONJsonReader *)inArg {
  return [((GSONTypeAdapter *) nil_chk(delegate_)) readWithGSONJsonReader:inArg];
}

- (void)writeWithGSONJsonWriter:(GSONJsonWriter *)outArg
                         withId:(id)value {
  GSONTypeAdapter *chosen = delegate_;
  id<JavaLangReflectType> runtimeType = GSONTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(self, type_, value);
  if (runtimeType != type_) {
    GSONTypeAdapter *runtimeTypeAdapter = [((GSONGson *) nil_chk(context_)) getAdapterWithGSONTypeToken:GSONTypeToken_getWithJavaLangReflectType_(runtimeType)];
    if (!([runtimeTypeAdapter isKindOfClass:[GSONReflectiveTypeAdapterFactory_Adapter class]])) {
      chosen = runtimeTypeAdapter;
    }
    else if (!([delegate_ isKindOfClass:[GSONReflectiveTypeAdapterFactory_Adapter class]])) {
      chosen = delegate_;
    }
    else {
      chosen = runtimeTypeAdapter;
    }
  }
  [((GSONTypeAdapter *) nil_chk(chosen)) writeWithGSONJsonWriter:outArg withId:value];
}

- (id<JavaLangReflectType>)getRuntimeTypeIfMoreSpecificWithJavaLangReflectType:(id<JavaLangReflectType>)type
                                                                        withId:(id)value {
  return GSONTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(self, type, value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 2, 3, 4, 5, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 4, 8, -1, -1 },
    { NULL, "LJavaLangReflectType;", 0x2, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithGSONGson:withGSONTypeAdapter:withJavaLangReflectType:);
  methods[1].selector = @selector(readWithGSONJsonReader:);
  methods[2].selector = @selector(writeWithGSONJsonWriter:withId:);
  methods[3].selector = @selector(getRuntimeTypeIfMoreSpecificWithJavaLangReflectType:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "context_", "LGSONGson;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "delegate_", "LGSONTypeAdapter;", .constantValue.asLong = 0, 0x12, -1, -1, 11, -1 },
    { "type_", "LJavaLangReflectType;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LGSONGson;LGSONTypeAdapter;LJavaLangReflectType;", "(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter<TT;>;Ljava/lang/reflect/Type;)V", "read", "LGSONJsonReader;", "LJavaIoIOException;", "(Lcom/google/gson/stream/JsonReader;)TT;", "write", "LGSONJsonWriter;LNSObject;", "(Lcom/google/gson/stream/JsonWriter;TT;)V", "getRuntimeTypeIfMoreSpecific", "LJavaLangReflectType;LNSObject;", "Lcom/google/gson/TypeAdapter<TT;>;", "<T:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<TT;>;" };
  static const J2ObjcClassInfo _GSONTypeAdapterRuntimeTypeWrapper = { "TypeAdapterRuntimeTypeWrapper", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x10, 4, 3, -1, -1, -1, 12, -1 };
  return &_GSONTypeAdapterRuntimeTypeWrapper;
}

@end

void GSONTypeAdapterRuntimeTypeWrapper_initWithGSONGson_withGSONTypeAdapter_withJavaLangReflectType_(GSONTypeAdapterRuntimeTypeWrapper *self, GSONGson *context, GSONTypeAdapter *delegate, id<JavaLangReflectType> type) {
  GSONTypeAdapter_init(self);
  self->context_ = context;
  self->delegate_ = delegate;
  self->type_ = type;
}

GSONTypeAdapterRuntimeTypeWrapper *new_GSONTypeAdapterRuntimeTypeWrapper_initWithGSONGson_withGSONTypeAdapter_withJavaLangReflectType_(GSONGson *context, GSONTypeAdapter *delegate, id<JavaLangReflectType> type) {
  J2OBJC_NEW_IMPL(GSONTypeAdapterRuntimeTypeWrapper, initWithGSONGson_withGSONTypeAdapter_withJavaLangReflectType_, context, delegate, type)
}

GSONTypeAdapterRuntimeTypeWrapper *create_GSONTypeAdapterRuntimeTypeWrapper_initWithGSONGson_withGSONTypeAdapter_withJavaLangReflectType_(GSONGson *context, GSONTypeAdapter *delegate, id<JavaLangReflectType> type) {
  J2OBJC_CREATE_IMPL(GSONTypeAdapterRuntimeTypeWrapper, initWithGSONGson_withGSONTypeAdapter_withJavaLangReflectType_, context, delegate, type)
}

id<JavaLangReflectType> GSONTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(GSONTypeAdapterRuntimeTypeWrapper *self, id<JavaLangReflectType> type, id value) {
  if (value != nil && (type == (id) NSObject_class_() || [JavaLangReflectTypeVariable_class_() isInstance:type] || [type isKindOfClass:[IOSClass class]])) {
    type = [value java_getClass];
  }
  return type;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONTypeAdapterRuntimeTypeWrapper)
