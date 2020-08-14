//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/DefaultDateTypeAdapter.java
//

#include "DefaultDateTypeAdapter.h"
#include "IOSClass.h"
#include "ISO8601Utils.h"
#include "J2ObjC_source.h"
#include "JavaVersion.h"
#include "JsonReader.h"
#include "JsonSyntaxException.h"
#include "JsonToken.h"
#include "JsonWriter.h"
#include "PreJava9DateFormatProvider.h"
#include "TypeAdapter.h"
#include "java/lang/AssertionError.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/sql/Date.h"
#include "java/sql/Timestamp.h"
#include "java/text/DateFormat.h"
#include "java/text/ParseException.h"
#include "java/text/ParsePosition.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/ArrayList.h"
#include "java/util/Date.h"
#include "java/util/List.h"
#include "java/util/Locale.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface GSONDefaultDateTypeAdapter () {
 @public
  IOSClass *dateType_;
  /*!
   @brief List of 1 or more different date formats used for de-serialization attempts.
   The first of them is used for serialization as well.
   */
  id<JavaUtilList> dateFormats_;
}

+ (IOSClass *)verifyDateTypeWithIOSClass:(IOSClass *)dateType;

- (JavaUtilDate *)deserializeToDateWithNSString:(NSString *)s;

@end

J2OBJC_FIELD_SETTER(GSONDefaultDateTypeAdapter, dateType_, IOSClass *)
J2OBJC_FIELD_SETTER(GSONDefaultDateTypeAdapter, dateFormats_, id<JavaUtilList>)

inline NSString *GSONDefaultDateTypeAdapter_get_SIMPLE_NAME();
static NSString *GSONDefaultDateTypeAdapter_SIMPLE_NAME = @"DefaultDateTypeAdapter";
J2OBJC_STATIC_FIELD_OBJ_FINAL(GSONDefaultDateTypeAdapter, SIMPLE_NAME, NSString *)

__attribute__((unused)) static IOSClass *GSONDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(IOSClass *dateType);

__attribute__((unused)) static JavaUtilDate *GSONDefaultDateTypeAdapter_deserializeToDateWithNSString_(GSONDefaultDateTypeAdapter *self, NSString *s);

@implementation GSONDefaultDateTypeAdapter

- (instancetype)initWithIOSClass:(IOSClass *)dateType {
  GSONDefaultDateTypeAdapter_initWithIOSClass_(self, dateType);
  return self;
}

- (instancetype)initWithIOSClass:(IOSClass *)dateType
                    withNSString:(NSString *)datePattern {
  GSONDefaultDateTypeAdapter_initWithIOSClass_withNSString_(self, dateType, datePattern);
  return self;
}

- (instancetype)initWithIOSClass:(IOSClass *)dateType
                         withInt:(jint)style {
  GSONDefaultDateTypeAdapter_initWithIOSClass_withInt_(self, dateType, style);
  return self;
}

- (instancetype)initWithInt:(jint)dateStyle
                    withInt:(jint)timeStyle {
  GSONDefaultDateTypeAdapter_initWithInt_withInt_(self, dateStyle, timeStyle);
  return self;
}

- (instancetype)initWithIOSClass:(IOSClass *)dateType
                         withInt:(jint)dateStyle
                         withInt:(jint)timeStyle {
  GSONDefaultDateTypeAdapter_initWithIOSClass_withInt_withInt_(self, dateType, dateStyle, timeStyle);
  return self;
}

+ (IOSClass *)verifyDateTypeWithIOSClass:(IOSClass *)dateType {
  return GSONDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(dateType);
}

- (void)writeWithGSONJsonWriter:(GSONJsonWriter *)outArg
                         withId:(JavaUtilDate *)value {
  if (value == nil) {
    (void) [((GSONJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  @synchronized(dateFormats_) {
    NSString *dateFormatAsString = [((JavaTextDateFormat *) nil_chk([((id<JavaUtilList>) nil_chk(dateFormats_)) getWithInt:0])) formatWithJavaUtilDate:value];
    (void) [((GSONJsonWriter *) nil_chk(outArg)) valueWithNSString:dateFormatAsString];
  }
}

- (JavaUtilDate *)readWithGSONJsonReader:(GSONJsonReader *)inArg {
  if ([((GSONJsonReader *) nil_chk(inArg)) peek] == JreLoadEnum(GSONJsonToken, NULL)) {
    [inArg nextNull];
    return nil;
  }
  JavaUtilDate *date = GSONDefaultDateTypeAdapter_deserializeToDateWithNSString_(self, [inArg nextString]);
  if (dateType_ == JavaUtilDate_class_()) {
    return date;
  }
  else if (dateType_ == JavaSqlTimestamp_class_()) {
    return new_JavaSqlTimestamp_initWithLong_([((JavaUtilDate *) nil_chk(date)) getTime]);
  }
  else if (dateType_ == JavaSqlDate_class_()) {
    return new_JavaSqlDate_initWithLong_([((JavaUtilDate *) nil_chk(date)) getTime]);
  }
  else {
    @throw new_JavaLangAssertionError_init();
  }
}

- (JavaUtilDate *)deserializeToDateWithNSString:(NSString *)s {
  return GSONDefaultDateTypeAdapter_deserializeToDateWithNSString_(self, s);
}

- (NSString *)description {
  JavaTextDateFormat *defaultFormat = [((id<JavaUtilList>) nil_chk(dateFormats_)) getWithInt:0];
  if ([defaultFormat isKindOfClass:[JavaTextSimpleDateFormat class]]) {
    return JreStrcat("$C$C", GSONDefaultDateTypeAdapter_SIMPLE_NAME, '(', [((JavaTextSimpleDateFormat *) nil_chk(((JavaTextSimpleDateFormat *) cast_chk(defaultFormat, [JavaTextSimpleDateFormat class])))) toPattern], ')');
  }
  else {
    return JreStrcat("$C$C", GSONDefaultDateTypeAdapter_SIMPLE_NAME, '(', [[((JavaTextDateFormat *) nil_chk(defaultFormat)) java_getClass] getSimpleName], ')');
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x0, -1, 2, -1, 3, -1, -1 },
    { NULL, NULL, 0x0, -1, 4, -1, 5, -1, -1 },
    { NULL, NULL, 0x1, -1, 6, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 7, -1, 8, -1, -1 },
    { NULL, "LIOSClass;", 0xa, 9, 0, -1, 10, -1, -1 },
    { NULL, "V", 0x1, 11, 12, 13, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, 14, 15, 13, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x2, 16, 17, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 18, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithIOSClass:);
  methods[1].selector = @selector(initWithIOSClass:withNSString:);
  methods[2].selector = @selector(initWithIOSClass:withInt:);
  methods[3].selector = @selector(initWithInt:withInt:);
  methods[4].selector = @selector(initWithIOSClass:withInt:withInt:);
  methods[5].selector = @selector(verifyDateTypeWithIOSClass:);
  methods[6].selector = @selector(writeWithGSONJsonWriter:withId:);
  methods[7].selector = @selector(readWithGSONJsonReader:);
  methods[8].selector = @selector(deserializeToDateWithNSString:);
  methods[9].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SIMPLE_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
    { "dateType_", "LIOSClass;", .constantValue.asLong = 0, 0x12, -1, -1, 20, -1 },
    { "dateFormats_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 21, -1 },
  };
  static const void *ptrTable[] = { "LIOSClass;", "(Ljava/lang/Class<+Ljava/util/Date;>;)V", "LIOSClass;LNSString;", "(Ljava/lang/Class<+Ljava/util/Date;>;Ljava/lang/String;)V", "LIOSClass;I", "(Ljava/lang/Class<+Ljava/util/Date;>;I)V", "II", "LIOSClass;II", "(Ljava/lang/Class<+Ljava/util/Date;>;II)V", "verifyDateType", "(Ljava/lang/Class<+Ljava/util/Date;>;)Ljava/lang/Class<+Ljava/util/Date;>;", "write", "LGSONJsonWriter;LJavaUtilDate;", "LJavaIoIOException;", "read", "LGSONJsonReader;", "deserializeToDate", "LNSString;", "toString", &GSONDefaultDateTypeAdapter_SIMPLE_NAME, "Ljava/lang/Class<+Ljava/util/Date;>;", "Ljava/util/List<Ljava/text/DateFormat;>;", "Lcom/google/gson/TypeAdapter<Ljava/util/Date;>;" };
  static const J2ObjcClassInfo _GSONDefaultDateTypeAdapter = { "DefaultDateTypeAdapter", "com.google.gson", ptrTable, methods, fields, 7, 0x10, 10, 3, -1, -1, -1, 22, -1 };
  return &_GSONDefaultDateTypeAdapter;
}

@end

void GSONDefaultDateTypeAdapter_initWithIOSClass_(GSONDefaultDateTypeAdapter *self, IOSClass *dateType) {
  GSONTypeAdapter_init(self);
  self->dateFormats_ = new_JavaUtilArrayList_init();
  self->dateType_ = GSONDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(dateType);
  [self->dateFormats_ addWithId:JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT, JreLoadStatic(JavaUtilLocale, US))];
  if (![((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) isEqual:JreLoadStatic(JavaUtilLocale, US)]) {
    [self->dateFormats_ addWithId:JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT)];
  }
  if (GSONJavaVersion_isJava9OrLater()) {
    [self->dateFormats_ addWithId:GSONPreJava9DateFormatProvider_getUSDateTimeFormatWithInt_withInt_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT)];
  }
}

GSONDefaultDateTypeAdapter *new_GSONDefaultDateTypeAdapter_initWithIOSClass_(IOSClass *dateType) {
  J2OBJC_NEW_IMPL(GSONDefaultDateTypeAdapter, initWithIOSClass_, dateType)
}

GSONDefaultDateTypeAdapter *create_GSONDefaultDateTypeAdapter_initWithIOSClass_(IOSClass *dateType) {
  J2OBJC_CREATE_IMPL(GSONDefaultDateTypeAdapter, initWithIOSClass_, dateType)
}

void GSONDefaultDateTypeAdapter_initWithIOSClass_withNSString_(GSONDefaultDateTypeAdapter *self, IOSClass *dateType, NSString *datePattern) {
  GSONTypeAdapter_init(self);
  self->dateFormats_ = new_JavaUtilArrayList_init();
  self->dateType_ = GSONDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(dateType);
  [self->dateFormats_ addWithId:new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(datePattern, JreLoadStatic(JavaUtilLocale, US))];
  if (![((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) isEqual:JreLoadStatic(JavaUtilLocale, US)]) {
    [self->dateFormats_ addWithId:new_JavaTextSimpleDateFormat_initWithNSString_(datePattern)];
  }
}

GSONDefaultDateTypeAdapter *new_GSONDefaultDateTypeAdapter_initWithIOSClass_withNSString_(IOSClass *dateType, NSString *datePattern) {
  J2OBJC_NEW_IMPL(GSONDefaultDateTypeAdapter, initWithIOSClass_withNSString_, dateType, datePattern)
}

GSONDefaultDateTypeAdapter *create_GSONDefaultDateTypeAdapter_initWithIOSClass_withNSString_(IOSClass *dateType, NSString *datePattern) {
  J2OBJC_CREATE_IMPL(GSONDefaultDateTypeAdapter, initWithIOSClass_withNSString_, dateType, datePattern)
}

void GSONDefaultDateTypeAdapter_initWithIOSClass_withInt_(GSONDefaultDateTypeAdapter *self, IOSClass *dateType, jint style) {
  GSONTypeAdapter_init(self);
  self->dateFormats_ = new_JavaUtilArrayList_init();
  self->dateType_ = GSONDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(dateType);
  [self->dateFormats_ addWithId:JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(style, JreLoadStatic(JavaUtilLocale, US))];
  if (![((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) isEqual:JreLoadStatic(JavaUtilLocale, US)]) {
    [self->dateFormats_ addWithId:JavaTextDateFormat_getDateInstanceWithInt_(style)];
  }
  if (GSONJavaVersion_isJava9OrLater()) {
    [self->dateFormats_ addWithId:GSONPreJava9DateFormatProvider_getUSDateFormatWithInt_(style)];
  }
}

GSONDefaultDateTypeAdapter *new_GSONDefaultDateTypeAdapter_initWithIOSClass_withInt_(IOSClass *dateType, jint style) {
  J2OBJC_NEW_IMPL(GSONDefaultDateTypeAdapter, initWithIOSClass_withInt_, dateType, style)
}

GSONDefaultDateTypeAdapter *create_GSONDefaultDateTypeAdapter_initWithIOSClass_withInt_(IOSClass *dateType, jint style) {
  J2OBJC_CREATE_IMPL(GSONDefaultDateTypeAdapter, initWithIOSClass_withInt_, dateType, style)
}

void GSONDefaultDateTypeAdapter_initWithInt_withInt_(GSONDefaultDateTypeAdapter *self, jint dateStyle, jint timeStyle) {
  GSONDefaultDateTypeAdapter_initWithIOSClass_withInt_withInt_(self, JavaUtilDate_class_(), dateStyle, timeStyle);
}

GSONDefaultDateTypeAdapter *new_GSONDefaultDateTypeAdapter_initWithInt_withInt_(jint dateStyle, jint timeStyle) {
  J2OBJC_NEW_IMPL(GSONDefaultDateTypeAdapter, initWithInt_withInt_, dateStyle, timeStyle)
}

GSONDefaultDateTypeAdapter *create_GSONDefaultDateTypeAdapter_initWithInt_withInt_(jint dateStyle, jint timeStyle) {
  J2OBJC_CREATE_IMPL(GSONDefaultDateTypeAdapter, initWithInt_withInt_, dateStyle, timeStyle)
}

void GSONDefaultDateTypeAdapter_initWithIOSClass_withInt_withInt_(GSONDefaultDateTypeAdapter *self, IOSClass *dateType, jint dateStyle, jint timeStyle) {
  GSONTypeAdapter_init(self);
  self->dateFormats_ = new_JavaUtilArrayList_init();
  self->dateType_ = GSONDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(dateType);
  [self->dateFormats_ addWithId:JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(dateStyle, timeStyle, JreLoadStatic(JavaUtilLocale, US))];
  if (![((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) isEqual:JreLoadStatic(JavaUtilLocale, US)]) {
    [self->dateFormats_ addWithId:JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_(dateStyle, timeStyle)];
  }
  if (GSONJavaVersion_isJava9OrLater()) {
    [self->dateFormats_ addWithId:GSONPreJava9DateFormatProvider_getUSDateTimeFormatWithInt_withInt_(dateStyle, timeStyle)];
  }
}

GSONDefaultDateTypeAdapter *new_GSONDefaultDateTypeAdapter_initWithIOSClass_withInt_withInt_(IOSClass *dateType, jint dateStyle, jint timeStyle) {
  J2OBJC_NEW_IMPL(GSONDefaultDateTypeAdapter, initWithIOSClass_withInt_withInt_, dateType, dateStyle, timeStyle)
}

GSONDefaultDateTypeAdapter *create_GSONDefaultDateTypeAdapter_initWithIOSClass_withInt_withInt_(IOSClass *dateType, jint dateStyle, jint timeStyle) {
  J2OBJC_CREATE_IMPL(GSONDefaultDateTypeAdapter, initWithIOSClass_withInt_withInt_, dateType, dateStyle, timeStyle)
}

IOSClass *GSONDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(IOSClass *dateType) {
  GSONDefaultDateTypeAdapter_initialize();
  if (dateType != JavaUtilDate_class_() && dateType != JavaSqlDate_class_() && dateType != JavaSqlTimestamp_class_()) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$@$@$@", @"Date type must be one of ", JavaUtilDate_class_(), @", ", JavaSqlTimestamp_class_(), @", or ", JavaSqlDate_class_(), @" but was ", dateType));
  }
  return dateType;
}

JavaUtilDate *GSONDefaultDateTypeAdapter_deserializeToDateWithNSString_(GSONDefaultDateTypeAdapter *self, NSString *s) {
  @synchronized(self->dateFormats_) {
    for (JavaTextDateFormat * __strong dateFormat in nil_chk(self->dateFormats_)) {
      @try {
        return [((JavaTextDateFormat *) nil_chk(dateFormat)) parseWithNSString:s];
      }
      @catch (JavaTextParseException *ignored) {
      }
    }
    @try {
      return GSONISO8601Utils_parseWithNSString_withJavaTextParsePosition_(s, new_JavaTextParsePosition_initWithInt_(0));
    }
    @catch (JavaTextParseException *e) {
      @throw new_GSONJsonSyntaxException_initWithNSString_withJavaLangThrowable_(s, e);
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONDefaultDateTypeAdapter)
