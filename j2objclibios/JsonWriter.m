//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/stream/JsonWriter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "JsonScope.h"
#include "JsonWriter.h"
#include "java/io/IOException.h"
#include "java/io/Writer.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Arrays.h"

@interface GSONJsonWriter () {
 @public
  /*!
   @brief The output data, containing at most one top-level array or object.
   */
  JavaIoWriter *out_;
  IOSIntArray *stack_;
  jint stackSize_;
  /*!
   @brief A string containing a full set of spaces for a single level of
  indentation, or null for no pretty printing.
   */
  NSString *indent_;
  /*!
   @brief The name/value separator; either ":" or ": ".
   */
  NSString *separator_;
  jboolean lenient_;
  jboolean htmlSafe_;
  NSString *deferredName_;
  jboolean serializeNulls_;
}

/*!
 @brief Enters a new scope by appending any necessary whitespace and the given
  bracket.
 */
- (GSONJsonWriter *)openWithInt:(jint)empty
                       withChar:(jchar)openBracket;

/*!
 @brief Closes the current scope by appending any necessary whitespace and the
  given bracket.
 */
- (GSONJsonWriter *)closeWithInt:(jint)empty
                         withInt:(jint)nonempty
                        withChar:(jchar)closeBracket;

- (void)pushWithInt:(jint)newTop;

/*!
 @brief Returns the value on the top of the stack.
 */
- (jint)peek;

/*!
 @brief Replace the value on the top of the stack with the given value.
 */
- (void)replaceTopWithInt:(jint)topOfStack;

- (void)writeDeferredName;

- (void)stringWithNSString:(NSString *)value;

- (void)newline OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Inserts any necessary separators and whitespace before a name.Also
  adjusts the stack to expect the name's value.
 */
- (void)beforeName;

/*!
 @brief Inserts any necessary separators and whitespace before a literal value,
  inline array, or inline object.Also adjusts the stack to expect either a
  closing bracket or another element.
 */
- (void)beforeValue;

@end

J2OBJC_FIELD_SETTER(GSONJsonWriter, out_, JavaIoWriter *)
J2OBJC_FIELD_SETTER(GSONJsonWriter, stack_, IOSIntArray *)
J2OBJC_FIELD_SETTER(GSONJsonWriter, indent_, NSString *)
J2OBJC_FIELD_SETTER(GSONJsonWriter, separator_, NSString *)
J2OBJC_FIELD_SETTER(GSONJsonWriter, deferredName_, NSString *)

inline IOSObjectArray *GSONJsonWriter_get_REPLACEMENT_CHARS();
static IOSObjectArray *GSONJsonWriter_REPLACEMENT_CHARS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(GSONJsonWriter, REPLACEMENT_CHARS, IOSObjectArray *)

inline IOSObjectArray *GSONJsonWriter_get_HTML_SAFE_REPLACEMENT_CHARS();
static IOSObjectArray *GSONJsonWriter_HTML_SAFE_REPLACEMENT_CHARS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(GSONJsonWriter, HTML_SAFE_REPLACEMENT_CHARS, IOSObjectArray *)

__attribute__((unused)) static GSONJsonWriter *GSONJsonWriter_openWithInt_withChar_(GSONJsonWriter *self, jint empty, jchar openBracket);

__attribute__((unused)) static GSONJsonWriter *GSONJsonWriter_closeWithInt_withInt_withChar_(GSONJsonWriter *self, jint empty, jint nonempty, jchar closeBracket);

__attribute__((unused)) static void GSONJsonWriter_pushWithInt_(GSONJsonWriter *self, jint newTop);

__attribute__((unused)) static jint GSONJsonWriter_peek(GSONJsonWriter *self);

__attribute__((unused)) static void GSONJsonWriter_replaceTopWithInt_(GSONJsonWriter *self, jint topOfStack);

__attribute__((unused)) static void GSONJsonWriter_writeDeferredName(GSONJsonWriter *self);

__attribute__((unused)) static void GSONJsonWriter_stringWithNSString_(GSONJsonWriter *self, NSString *value);

__attribute__((unused)) static void GSONJsonWriter_newline(GSONJsonWriter *self);

__attribute__((unused)) static void GSONJsonWriter_beforeName(GSONJsonWriter *self);

__attribute__((unused)) static void GSONJsonWriter_beforeValue(GSONJsonWriter *self);

J2OBJC_INITIALIZED_DEFN(GSONJsonWriter)

@implementation GSONJsonWriter

- (instancetype)initWithJavaIoWriter:(JavaIoWriter *)outArg {
  GSONJsonWriter_initWithJavaIoWriter_(self, outArg);
  return self;
}

- (void)setIndentWithNSString:(NSString *)indent {
  if ([((NSString *) nil_chk(indent)) java_length] == 0) {
    self->indent_ = nil;
    self->separator_ = @":";
  }
  else {
    self->indent_ = indent;
    self->separator_ = @": ";
  }
}

- (void)setLenientWithBoolean:(jboolean)lenient {
  self->lenient_ = lenient;
}

- (jboolean)isLenient {
  return lenient_;
}

- (void)setHtmlSafeWithBoolean:(jboolean)htmlSafe {
  self->htmlSafe_ = htmlSafe;
}

- (jboolean)isHtmlSafe {
  return htmlSafe_;
}

- (void)setSerializeNullsWithBoolean:(jboolean)serializeNulls {
  self->serializeNulls_ = serializeNulls;
}

- (jboolean)getSerializeNulls {
  return serializeNulls_;
}

- (GSONJsonWriter *)beginArray {
  GSONJsonWriter_writeDeferredName(self);
  return GSONJsonWriter_openWithInt_withChar_(self, GSONJsonScope_EMPTY_ARRAY, '[');
}

- (GSONJsonWriter *)endArray {
  return GSONJsonWriter_closeWithInt_withInt_withChar_(self, GSONJsonScope_EMPTY_ARRAY, GSONJsonScope_NONEMPTY_ARRAY, ']');
}

- (GSONJsonWriter *)beginObject {
  GSONJsonWriter_writeDeferredName(self);
  return GSONJsonWriter_openWithInt_withChar_(self, GSONJsonScope_EMPTY_OBJECT, '{');
}

- (GSONJsonWriter *)endObject {
  return GSONJsonWriter_closeWithInt_withInt_withChar_(self, GSONJsonScope_EMPTY_OBJECT, GSONJsonScope_NONEMPTY_OBJECT, '}');
}

- (GSONJsonWriter *)openWithInt:(jint)empty
                       withChar:(jchar)openBracket {
  return GSONJsonWriter_openWithInt_withChar_(self, empty, openBracket);
}

- (GSONJsonWriter *)closeWithInt:(jint)empty
                         withInt:(jint)nonempty
                        withChar:(jchar)closeBracket {
  return GSONJsonWriter_closeWithInt_withInt_withChar_(self, empty, nonempty, closeBracket);
}

- (void)pushWithInt:(jint)newTop {
  GSONJsonWriter_pushWithInt_(self, newTop);
}

- (jint)peek {
  return GSONJsonWriter_peek(self);
}

- (void)replaceTopWithInt:(jint)topOfStack {
  GSONJsonWriter_replaceTopWithInt_(self, topOfStack);
}

- (GSONJsonWriter *)nameWithNSString:(NSString *)name {
  if (name == nil) {
    @throw new_JavaLangNullPointerException_initWithNSString_(@"name == null");
  }
  if (deferredName_ != nil) {
    @throw new_JavaLangIllegalStateException_init();
  }
  if (stackSize_ == 0) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"JsonWriter is closed.");
  }
  deferredName_ = name;
  return self;
}

- (void)writeDeferredName {
  GSONJsonWriter_writeDeferredName(self);
}

- (GSONJsonWriter *)valueWithNSString:(NSString *)value {
  if (value == nil) {
    return [self nullValue];
  }
  GSONJsonWriter_writeDeferredName(self);
  GSONJsonWriter_beforeValue(self);
  GSONJsonWriter_stringWithNSString_(self, value);
  return self;
}

- (GSONJsonWriter *)jsonValueWithNSString:(NSString *)value {
  if (value == nil) {
    return [self nullValue];
  }
  GSONJsonWriter_writeDeferredName(self);
  GSONJsonWriter_beforeValue(self);
  (void) [((JavaIoWriter *) nil_chk(out_)) appendWithJavaLangCharSequence:value];
  return self;
}

- (GSONJsonWriter *)nullValue {
  if (deferredName_ != nil) {
    if (serializeNulls_) {
      GSONJsonWriter_writeDeferredName(self);
    }
    else {
      deferredName_ = nil;
      return self;
    }
  }
  GSONJsonWriter_beforeValue(self);
  [((JavaIoWriter *) nil_chk(out_)) writeWithNSString:@"null"];
  return self;
}

- (GSONJsonWriter *)valueWithBoolean:(jboolean)value {
  GSONJsonWriter_writeDeferredName(self);
  GSONJsonWriter_beforeValue(self);
  [((JavaIoWriter *) nil_chk(out_)) writeWithNSString:value ? @"true" : @"false"];
  return self;
}

- (GSONJsonWriter *)valueWithJavaLangBoolean:(JavaLangBoolean *)value {
  if (value == nil) {
    return [self nullValue];
  }
  GSONJsonWriter_writeDeferredName(self);
  GSONJsonWriter_beforeValue(self);
  [((JavaIoWriter *) nil_chk(out_)) writeWithNSString:[value booleanValue] ? @"true" : @"false"];
  return self;
}

- (GSONJsonWriter *)valueWithDouble:(jdouble)value {
  GSONJsonWriter_writeDeferredName(self);
  if (!lenient_ && (JavaLangDouble_isNaNWithDouble_(value) || JavaLangDouble_isInfiniteWithDouble_(value))) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"Numeric values must be finite, but was ", value));
  }
  GSONJsonWriter_beforeValue(self);
  (void) [((JavaIoWriter *) nil_chk(out_)) appendWithJavaLangCharSequence:JavaLangDouble_toStringWithDouble_(value)];
  return self;
}

- (GSONJsonWriter *)valueWithLong:(jlong)value {
  GSONJsonWriter_writeDeferredName(self);
  GSONJsonWriter_beforeValue(self);
  [((JavaIoWriter *) nil_chk(out_)) writeWithNSString:JavaLangLong_toStringWithLong_(value)];
  return self;
}

- (GSONJsonWriter *)valueWithNSNumber:(NSNumber *)value {
  if (value == nil) {
    return [self nullValue];
  }
  GSONJsonWriter_writeDeferredName(self);
  NSString *string = [value description];
  if (!lenient_ && ([((NSString *) nil_chk(string)) isEqual:@"-Infinity"] || [string isEqual:@"Infinity"] || [string isEqual:@"NaN"])) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Numeric values must be finite, but was ", value));
  }
  GSONJsonWriter_beforeValue(self);
  (void) [((JavaIoWriter *) nil_chk(out_)) appendWithJavaLangCharSequence:string];
  return self;
}

- (void)flush {
  if (stackSize_ == 0) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"JsonWriter is closed.");
  }
  [((JavaIoWriter *) nil_chk(out_)) flush];
}

- (void)close {
  [((JavaIoWriter *) nil_chk(out_)) close];
  jint size = stackSize_;
  if (size > 1 || (size == 1 && IOSIntArray_Get(nil_chk(stack_), size - 1) != GSONJsonScope_NONEMPTY_DOCUMENT)) {
    @throw new_JavaIoIOException_initWithNSString_(@"Incomplete document");
  }
  stackSize_ = 0;
}

- (void)stringWithNSString:(NSString *)value {
  GSONJsonWriter_stringWithNSString_(self, value);
}

- (void)newline {
  GSONJsonWriter_newline(self);
}

- (void)beforeName {
  GSONJsonWriter_beforeName(self);
}

- (void)beforeValue {
  GSONJsonWriter_beforeValue(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 5, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 6, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, -1, -1, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, -1, -1, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, -1, -1, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, -1, -1, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x2, 8, 9, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x2, 10, 11, 7, -1, -1, -1 },
    { NULL, "V", 0x2, 12, 13, -1, -1, -1, -1 },
    { NULL, "I", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 14, 13, -1, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, 15, 2, 7, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, 16, 2, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, 17, 2, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, -1, -1, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, 16, 4, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, 16, 18, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, 16, 19, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, 16, 20, 7, -1, -1, -1 },
    { NULL, "LGSONJsonWriter;", 0x1, 16, 21, 7, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 7, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 7, -1, -1, -1 },
    { NULL, "V", 0x2, 22, 2, 7, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 7, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 7, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 7, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithJavaIoWriter:);
  methods[1].selector = @selector(setIndentWithNSString:);
  methods[2].selector = @selector(setLenientWithBoolean:);
  methods[3].selector = @selector(isLenient);
  methods[4].selector = @selector(setHtmlSafeWithBoolean:);
  methods[5].selector = @selector(isHtmlSafe);
  methods[6].selector = @selector(setSerializeNullsWithBoolean:);
  methods[7].selector = @selector(getSerializeNulls);
  methods[8].selector = @selector(beginArray);
  methods[9].selector = @selector(endArray);
  methods[10].selector = @selector(beginObject);
  methods[11].selector = @selector(endObject);
  methods[12].selector = @selector(openWithInt:withChar:);
  methods[13].selector = @selector(closeWithInt:withInt:withChar:);
  methods[14].selector = @selector(pushWithInt:);
  methods[15].selector = @selector(peek);
  methods[16].selector = @selector(replaceTopWithInt:);
  methods[17].selector = @selector(nameWithNSString:);
  methods[18].selector = @selector(writeDeferredName);
  methods[19].selector = @selector(valueWithNSString:);
  methods[20].selector = @selector(jsonValueWithNSString:);
  methods[21].selector = @selector(nullValue);
  methods[22].selector = @selector(valueWithBoolean:);
  methods[23].selector = @selector(valueWithJavaLangBoolean:);
  methods[24].selector = @selector(valueWithDouble:);
  methods[25].selector = @selector(valueWithLong:);
  methods[26].selector = @selector(valueWithNSNumber:);
  methods[27].selector = @selector(flush);
  methods[28].selector = @selector(close);
  methods[29].selector = @selector(stringWithNSString:);
  methods[30].selector = @selector(newline);
  methods[31].selector = @selector(beforeName);
  methods[32].selector = @selector(beforeValue);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "REPLACEMENT_CHARS", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 23, -1, -1 },
    { "HTML_SAFE_REPLACEMENT_CHARS", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 24, -1, -1 },
    { "out_", "LJavaIoWriter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "stack_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "stackSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "indent_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "separator_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lenient_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "htmlSafe_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "deferredName_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "serializeNulls_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoWriter;", "setIndent", "LNSString;", "setLenient", "Z", "setHtmlSafe", "setSerializeNulls", "LJavaIoIOException;", "open", "IC", "close", "IIC", "push", "I", "replaceTop", "name", "value", "jsonValue", "LJavaLangBoolean;", "D", "J", "LNSNumber;", "string", &GSONJsonWriter_REPLACEMENT_CHARS, &GSONJsonWriter_HTML_SAFE_REPLACEMENT_CHARS };
  static const J2ObjcClassInfo _GSONJsonWriter = { "JsonWriter", "com.google.gson.stream", ptrTable, methods, fields, 7, 0x1, 33, 11, -1, -1, -1, -1, -1 };
  return &_GSONJsonWriter;
}

+ (void)initialize {
  if (self == [GSONJsonWriter class]) {
    {
      GSONJsonWriter_REPLACEMENT_CHARS = [IOSObjectArray newArrayWithLength:128 type:NSString_class_()];
      for (jint i = 0; i <= (jint) 0x1f; i++) {
        (void) IOSObjectArray_Set(GSONJsonWriter_REPLACEMENT_CHARS, i, NSString_java_formatWithNSString_withNSObjectArray_(@"\\u%04x", [IOSObjectArray newArrayWithObjects:(id[]){ JavaLangInteger_valueOfWithInt_((jint) i) } count:1 type:NSObject_class_()]));
      }
      (void) IOSObjectArray_Set(GSONJsonWriter_REPLACEMENT_CHARS, '"', @"\\\"");
      (void) IOSObjectArray_Set(GSONJsonWriter_REPLACEMENT_CHARS, '\\', @"\\\\");
      (void) IOSObjectArray_Set(GSONJsonWriter_REPLACEMENT_CHARS, 0x0009, @"\\t");
      (void) IOSObjectArray_Set(GSONJsonWriter_REPLACEMENT_CHARS, 0x0008, @"\\b");
      (void) IOSObjectArray_Set(GSONJsonWriter_REPLACEMENT_CHARS, 0x000a, @"\\n");
      (void) IOSObjectArray_Set(GSONJsonWriter_REPLACEMENT_CHARS, 0x000d, @"\\r");
      (void) IOSObjectArray_Set(GSONJsonWriter_REPLACEMENT_CHARS, 0x000c, @"\\f");
      GSONJsonWriter_HTML_SAFE_REPLACEMENT_CHARS = [GSONJsonWriter_REPLACEMENT_CHARS java_clone];
      (void) IOSObjectArray_Set(nil_chk(GSONJsonWriter_HTML_SAFE_REPLACEMENT_CHARS), '<', @"\\u003c");
      (void) IOSObjectArray_Set(GSONJsonWriter_HTML_SAFE_REPLACEMENT_CHARS, '>', @"\\u003e");
      (void) IOSObjectArray_Set(GSONJsonWriter_HTML_SAFE_REPLACEMENT_CHARS, '&', @"\\u0026");
      (void) IOSObjectArray_Set(GSONJsonWriter_HTML_SAFE_REPLACEMENT_CHARS, '=', @"\\u003d");
      (void) IOSObjectArray_Set(GSONJsonWriter_HTML_SAFE_REPLACEMENT_CHARS, '\'', @"\\u0027");
    }
    J2OBJC_SET_INITIALIZED(GSONJsonWriter)
  }
}

@end

void GSONJsonWriter_initWithJavaIoWriter_(GSONJsonWriter *self, JavaIoWriter *outArg) {
  NSObject_init(self);
  self->stack_ = [IOSIntArray newArrayWithLength:32];
  self->stackSize_ = 0;
  {
    GSONJsonWriter_pushWithInt_(self, GSONJsonScope_EMPTY_DOCUMENT);
  }
  self->separator_ = @":";
  self->serializeNulls_ = true;
  if (outArg == nil) {
    @throw new_JavaLangNullPointerException_initWithNSString_(@"out == null");
  }
  self->out_ = outArg;
}

GSONJsonWriter *new_GSONJsonWriter_initWithJavaIoWriter_(JavaIoWriter *outArg) {
  J2OBJC_NEW_IMPL(GSONJsonWriter, initWithJavaIoWriter_, outArg)
}

GSONJsonWriter *create_GSONJsonWriter_initWithJavaIoWriter_(JavaIoWriter *outArg) {
  J2OBJC_CREATE_IMPL(GSONJsonWriter, initWithJavaIoWriter_, outArg)
}

GSONJsonWriter *GSONJsonWriter_openWithInt_withChar_(GSONJsonWriter *self, jint empty, jchar openBracket) {
  GSONJsonWriter_beforeValue(self);
  GSONJsonWriter_pushWithInt_(self, empty);
  [((JavaIoWriter *) nil_chk(self->out_)) writeWithInt:openBracket];
  return self;
}

GSONJsonWriter *GSONJsonWriter_closeWithInt_withInt_withChar_(GSONJsonWriter *self, jint empty, jint nonempty, jchar closeBracket) {
  jint context = GSONJsonWriter_peek(self);
  if (context != nonempty && context != empty) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"Nesting problem.");
  }
  if (self->deferredName_ != nil) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$", @"Dangling name: ", self->deferredName_));
  }
  self->stackSize_--;
  if (context == nonempty) {
    GSONJsonWriter_newline(self);
  }
  [((JavaIoWriter *) nil_chk(self->out_)) writeWithInt:closeBracket];
  return self;
}

void GSONJsonWriter_pushWithInt_(GSONJsonWriter *self, jint newTop) {
  if (self->stackSize_ == ((IOSIntArray *) nil_chk(self->stack_))->size_) {
    self->stack_ = JavaUtilArrays_copyOfWithIntArray_withInt_(self->stack_, self->stackSize_ * 2);
  }
  *IOSIntArray_GetRef(nil_chk(self->stack_), self->stackSize_++) = newTop;
}

jint GSONJsonWriter_peek(GSONJsonWriter *self) {
  if (self->stackSize_ == 0) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"JsonWriter is closed.");
  }
  return IOSIntArray_Get(nil_chk(self->stack_), self->stackSize_ - 1);
}

void GSONJsonWriter_replaceTopWithInt_(GSONJsonWriter *self, jint topOfStack) {
  *IOSIntArray_GetRef(nil_chk(self->stack_), self->stackSize_ - 1) = topOfStack;
}

void GSONJsonWriter_writeDeferredName(GSONJsonWriter *self) {
  if (self->deferredName_ != nil) {
    GSONJsonWriter_beforeName(self);
    GSONJsonWriter_stringWithNSString_(self, self->deferredName_);
    self->deferredName_ = nil;
  }
}

void GSONJsonWriter_stringWithNSString_(GSONJsonWriter *self, NSString *value) {
  IOSObjectArray *replacements = self->htmlSafe_ ? GSONJsonWriter_HTML_SAFE_REPLACEMENT_CHARS : GSONJsonWriter_REPLACEMENT_CHARS;
  [((JavaIoWriter *) nil_chk(self->out_)) writeWithInt:'"'];
  jint last = 0;
  jint length = [((NSString *) nil_chk(value)) java_length];
  for (jint i = 0; i < length; i++) {
    jchar c = [value charAtWithInt:i];
    NSString *replacement;
    if (c < 128) {
      replacement = IOSObjectArray_Get(replacements, c);
      if (replacement == nil) {
        continue;
      }
    }
    else if (c == 0x2028) {
      replacement = @"\\u2028";
    }
    else if (c == 0x2029) {
      replacement = @"\\u2029";
    }
    else {
      continue;
    }
    if (last < i) {
      [self->out_ writeWithNSString:value withInt:last withInt:i - last];
    }
    [self->out_ writeWithNSString:replacement];
    last = i + 1;
  }
  if (last < length) {
    [self->out_ writeWithNSString:value withInt:last withInt:length - last];
  }
  [self->out_ writeWithInt:'"'];
}

void GSONJsonWriter_newline(GSONJsonWriter *self) {
  if (self->indent_ == nil) {
    return;
  }
  [((JavaIoWriter *) nil_chk(self->out_)) writeWithInt:0x000a];
  for (jint i = 1, size = self->stackSize_; i < size; i++) {
    [self->out_ writeWithNSString:self->indent_];
  }
}

void GSONJsonWriter_beforeName(GSONJsonWriter *self) {
  jint context = GSONJsonWriter_peek(self);
  if (context == GSONJsonScope_NONEMPTY_OBJECT) {
    [((JavaIoWriter *) nil_chk(self->out_)) writeWithInt:','];
  }
  else if (context != GSONJsonScope_EMPTY_OBJECT) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"Nesting problem.");
  }
  GSONJsonWriter_newline(self);
  GSONJsonWriter_replaceTopWithInt_(self, GSONJsonScope_DANGLING_NAME);
}

void GSONJsonWriter_beforeValue(GSONJsonWriter *self) {
  switch (GSONJsonWriter_peek(self)) {
    case GSONJsonScope_NONEMPTY_DOCUMENT:
    if (!self->lenient_) {
      @throw new_JavaLangIllegalStateException_initWithNSString_(@"JSON must have only one top-level value.");
    }
    case GSONJsonScope_EMPTY_DOCUMENT:
    GSONJsonWriter_replaceTopWithInt_(self, GSONJsonScope_NONEMPTY_DOCUMENT);
    break;
    case GSONJsonScope_EMPTY_ARRAY:
    GSONJsonWriter_replaceTopWithInt_(self, GSONJsonScope_NONEMPTY_ARRAY);
    GSONJsonWriter_newline(self);
    break;
    case GSONJsonScope_NONEMPTY_ARRAY:
    (void) [((JavaIoWriter *) nil_chk(self->out_)) appendWithChar:','];
    GSONJsonWriter_newline(self);
    break;
    case GSONJsonScope_DANGLING_NAME:
    (void) [((JavaIoWriter *) nil_chk(self->out_)) appendWithJavaLangCharSequence:self->separator_];
    GSONJsonWriter_replaceTopWithInt_(self, GSONJsonScope_NONEMPTY_OBJECT);
    break;
    default:
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"Nesting problem.");
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONJsonWriter)