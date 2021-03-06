//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/TypeAdapter.java
//

#include "J2ObjC_source.h"
#include "JsonElement.h"
#include "JsonIOException.h"
#include "JsonReader.h"
#include "JsonToken.h"
#include "JsonTreeReader.h"
#include "JsonTreeWriter.h"
#include "JsonWriter.h"
#include "TypeAdapter.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/io/StringReader.h"
#include "java/io/StringWriter.h"
#include "java/io/Writer.h"
#include "java/lang/AssertionError.h"

__attribute__((unused)) static void GSONTypeAdapter_toJsonWithJavaIoWriter_withId_(GSONTypeAdapter *self, JavaIoWriter *outArg, id value);

__attribute__((unused)) static id GSONTypeAdapter_fromJsonWithJavaIoReader_(GSONTypeAdapter *self, JavaIoReader *inArg);

@interface GSONTypeAdapter_1 : GSONTypeAdapter {
 @public
  GSONTypeAdapter *this$0_;
}

- (instancetype)initWithGSONTypeAdapter:(GSONTypeAdapter *)outer$;

- (void)writeWithGSONJsonWriter:(GSONJsonWriter *)outArg
                         withId:(id)value;

- (id)readWithGSONJsonReader:(GSONJsonReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONTypeAdapter_1)

__attribute__((unused)) static void GSONTypeAdapter_1_initWithGSONTypeAdapter_(GSONTypeAdapter_1 *self, GSONTypeAdapter *outer$);

__attribute__((unused)) static GSONTypeAdapter_1 *new_GSONTypeAdapter_1_initWithGSONTypeAdapter_(GSONTypeAdapter *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static GSONTypeAdapter_1 *create_GSONTypeAdapter_1_initWithGSONTypeAdapter_(GSONTypeAdapter *outer$);

@implementation GSONTypeAdapter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GSONTypeAdapter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)writeWithGSONJsonWriter:(GSONJsonWriter *)outArg
                         withId:(id)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)toJsonWithJavaIoWriter:(JavaIoWriter *)outArg
                        withId:(id)value {
  GSONTypeAdapter_toJsonWithJavaIoWriter_withId_(self, outArg, value);
}

- (GSONTypeAdapter *)nullSafe {
  return new_GSONTypeAdapter_1_initWithGSONTypeAdapter_(self);
}

- (NSString *)toJsonWithId:(id)value {
  JavaIoStringWriter *stringWriter = new_JavaIoStringWriter_init();
  @try {
    GSONTypeAdapter_toJsonWithJavaIoWriter_withId_(self, stringWriter, value);
  }
  @catch (JavaIoIOException *e) {
    @throw new_JavaLangAssertionError_initWithId_(e);
  }
  return [stringWriter description];
}

- (GSONJsonElement *)toJsonTreeWithId:(id)value {
  @try {
    GSONJsonTreeWriter *jsonWriter = new_GSONJsonTreeWriter_init();
    [self writeWithGSONJsonWriter:jsonWriter withId:value];
    return [jsonWriter get];
  }
  @catch (JavaIoIOException *e) {
    @throw new_GSONJsonIOException_initWithJavaLangThrowable_(e);
  }
}

- (id)readWithGSONJsonReader:(GSONJsonReader *)inArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)fromJsonWithJavaIoReader:(JavaIoReader *)inArg {
  return GSONTypeAdapter_fromJsonWithJavaIoReader_(self, inArg);
}

- (id)fromJsonWithNSString:(NSString *)json {
  return GSONTypeAdapter_fromJsonWithJavaIoReader_(self, new_JavaIoStringReader_initWithNSString_(json));
}

- (id)fromJsonTreeWithGSONJsonElement:(GSONJsonElement *)jsonTree {
  @try {
    GSONJsonReader *jsonReader = new_GSONJsonTreeReader_initWithGSONJsonElement_(jsonTree);
    return [self readWithGSONJsonReader:jsonReader];
  }
  @catch (JavaIoIOException *e) {
    @throw new_GSONJsonIOException_initWithJavaLangThrowable_(e);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, 2, 3, -1, -1 },
    { NULL, "V", 0x11, 4, 5, 2, 6, -1, -1 },
    { NULL, "LGSONTypeAdapter;", 0x11, -1, -1, -1, 7, -1, -1 },
    { NULL, "LNSString;", 0x11, 4, 8, -1, 9, -1, -1 },
    { NULL, "LGSONJsonElement;", 0x11, 10, 8, -1, 11, -1, -1 },
    { NULL, "LNSObject;", 0x401, 12, 13, 2, 14, -1, -1 },
    { NULL, "LNSObject;", 0x11, 15, 16, 2, 17, -1, -1 },
    { NULL, "LNSObject;", 0x11, 15, 18, 2, 19, -1, -1 },
    { NULL, "LNSObject;", 0x11, 20, 21, -1, 22, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(writeWithGSONJsonWriter:withId:);
  methods[2].selector = @selector(toJsonWithJavaIoWriter:withId:);
  methods[3].selector = @selector(nullSafe);
  methods[4].selector = @selector(toJsonWithId:);
  methods[5].selector = @selector(toJsonTreeWithId:);
  methods[6].selector = @selector(readWithGSONJsonReader:);
  methods[7].selector = @selector(fromJsonWithJavaIoReader:);
  methods[8].selector = @selector(fromJsonWithNSString:);
  methods[9].selector = @selector(fromJsonTreeWithGSONJsonElement:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "write", "LGSONJsonWriter;LNSObject;", "LJavaIoIOException;", "(Lcom/google/gson/stream/JsonWriter;TT;)V", "toJson", "LJavaIoWriter;LNSObject;", "(Ljava/io/Writer;TT;)V", "()Lcom/google/gson/TypeAdapter<TT;>;", "LNSObject;", "(TT;)Ljava/lang/String;", "toJsonTree", "(TT;)Lcom/google/gson/JsonElement;", "read", "LGSONJsonReader;", "(Lcom/google/gson/stream/JsonReader;)TT;", "fromJson", "LJavaIoReader;", "(Ljava/io/Reader;)TT;", "LNSString;", "(Ljava/lang/String;)TT;", "fromJsonTree", "LGSONJsonElement;", "(Lcom/google/gson/JsonElement;)TT;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _GSONTypeAdapter = { "TypeAdapter", "com.google.gson", ptrTable, methods, NULL, 7, 0x401, 10, 0, -1, -1, -1, 23, -1 };
  return &_GSONTypeAdapter;
}

@end

void GSONTypeAdapter_init(GSONTypeAdapter *self) {
  NSObject_init(self);
}

void GSONTypeAdapter_toJsonWithJavaIoWriter_withId_(GSONTypeAdapter *self, JavaIoWriter *outArg, id value) {
  GSONJsonWriter *writer = new_GSONJsonWriter_initWithJavaIoWriter_(outArg);
  [self writeWithGSONJsonWriter:writer withId:value];
}

id GSONTypeAdapter_fromJsonWithJavaIoReader_(GSONTypeAdapter *self, JavaIoReader *inArg) {
  GSONJsonReader *reader = new_GSONJsonReader_initWithJavaIoReader_(inArg);
  return [self readWithGSONJsonReader:reader];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONTypeAdapter)

@implementation GSONTypeAdapter_1

- (instancetype)initWithGSONTypeAdapter:(GSONTypeAdapter *)outer$ {
  GSONTypeAdapter_1_initWithGSONTypeAdapter_(self, outer$);
  return self;
}

- (void)writeWithGSONJsonWriter:(GSONJsonWriter *)outArg
                         withId:(id)value {
  if (value == nil) {
    (void) [((GSONJsonWriter *) nil_chk(outArg)) nullValue];
  }
  else {
    [this$0_ writeWithGSONJsonWriter:outArg withId:value];
  }
}

- (id)readWithGSONJsonReader:(GSONJsonReader *)reader {
  if ([((GSONJsonReader *) nil_chk(reader)) peek] == JreLoadEnum(GSONJsonToken, NULL)) {
    [reader nextNull];
    return nil;
  }
  return [this$0_ readWithGSONJsonReader:reader];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, 2, 3, -1, -1 },
    { NULL, "LNSObject;", 0x1, 4, 5, 2, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithGSONTypeAdapter:);
  methods[1].selector = @selector(writeWithGSONJsonWriter:withId:);
  methods[2].selector = @selector(readWithGSONJsonReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LGSONTypeAdapter;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "write", "LGSONJsonWriter;LNSObject;", "LJavaIoIOException;", "(Lcom/google/gson/stream/JsonWriter;TT;)V", "read", "LGSONJsonReader;", "(Lcom/google/gson/stream/JsonReader;)TT;", "Lcom/google/gson/TypeAdapter<TT;>;", "LGSONTypeAdapter;", "nullSafe" };
  static const J2ObjcClassInfo _GSONTypeAdapter_1 = { "", "com.google.gson", ptrTable, methods, fields, 7, 0x8018, 3, 1, 8, -1, 9, 7, -1 };
  return &_GSONTypeAdapter_1;
}

@end

void GSONTypeAdapter_1_initWithGSONTypeAdapter_(GSONTypeAdapter_1 *self, GSONTypeAdapter *outer$) {
  self->this$0_ = outer$;
  GSONTypeAdapter_init(self);
}

GSONTypeAdapter_1 *new_GSONTypeAdapter_1_initWithGSONTypeAdapter_(GSONTypeAdapter *outer$) {
  J2OBJC_NEW_IMPL(GSONTypeAdapter_1, initWithGSONTypeAdapter_, outer$)
}

GSONTypeAdapter_1 *create_GSONTypeAdapter_1_initWithGSONTypeAdapter_(GSONTypeAdapter *outer$) {
  J2OBJC_CREATE_IMPL(GSONTypeAdapter_1, initWithGSONTypeAdapter_, outer$)
}
