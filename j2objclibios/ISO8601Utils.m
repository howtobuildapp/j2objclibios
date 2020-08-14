//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/bind/util/ISO8601Utils.java
//

#include "IOSClass.h"
#include "ISO8601Utils.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/Throwable.h"
#include "java/text/ParseException.h"
#include "java/text/ParsePosition.h"
#include "java/util/Calendar.h"
#include "java/util/Date.h"
#include "java/util/GregorianCalendar.h"
#include "java/util/Locale.h"
#include "java/util/TimeZone.h"

@interface GSONISO8601Utils ()

/*!
 @brief Check if the expected character exist at the given offset in the value.
 @param value the string to check at the specified offset
 @param offset the offset to look for the expected character
 @param expected the expected character
 @return true if the expected character exist at the given offset
 */
+ (jboolean)checkOffsetWithNSString:(NSString *)value
                            withInt:(jint)offset
                           withChar:(jchar)expected;

/*!
 @brief Parse an integer located between 2 given offsets in a string
 @param value the string to parse
 @param beginIndex the start index for the integer in the string
 @param endIndex the end index for the integer in the string
 @return the int
 @throw NumberFormatExceptionif the value is not a number
 */
+ (jint)parseIntWithNSString:(NSString *)value
                     withInt:(jint)beginIndex
                     withInt:(jint)endIndex;

/*!
 @brief Zero pad a number to a specified length
 @param buffer buffer to use for padding
 @param value the integer value to pad if necessary.
 @param length the length of the string we should zero pad
 */
+ (void)padIntWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer
                                withInt:(jint)value
                                withInt:(jint)length;

/*!
 @brief Returns the index of the first character in the string that is not a digit, starting at offset.
 */
+ (jint)indexOfNonDigitWithNSString:(NSString *)string
                            withInt:(jint)offset;

@end

/*!
 @brief ID to represent the 'UTC' string, default timezone since Jackson 2.7
 @since 2.7
 */
inline NSString *GSONISO8601Utils_get_UTC_ID();
static NSString *GSONISO8601Utils_UTC_ID = @"UTC";
J2OBJC_STATIC_FIELD_OBJ_FINAL(GSONISO8601Utils, UTC_ID, NSString *)

/*!
 @brief The UTC timezone, prefetched to avoid more lookups.
 @since 2.7
 */
inline JavaUtilTimeZone *GSONISO8601Utils_get_TIMEZONE_UTC();
static JavaUtilTimeZone *GSONISO8601Utils_TIMEZONE_UTC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(GSONISO8601Utils, TIMEZONE_UTC, JavaUtilTimeZone *)

__attribute__((unused)) static jboolean GSONISO8601Utils_checkOffsetWithNSString_withInt_withChar_(NSString *value, jint offset, jchar expected);

__attribute__((unused)) static jint GSONISO8601Utils_parseIntWithNSString_withInt_withInt_(NSString *value, jint beginIndex, jint endIndex);

__attribute__((unused)) static void GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(JavaLangStringBuilder *buffer, jint value, jint length);

__attribute__((unused)) static jint GSONISO8601Utils_indexOfNonDigitWithNSString_withInt_(NSString *string, jint offset);

J2OBJC_INITIALIZED_DEFN(GSONISO8601Utils)

@implementation GSONISO8601Utils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GSONISO8601Utils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)formatWithJavaUtilDate:(JavaUtilDate *)date {
  return GSONISO8601Utils_formatWithJavaUtilDate_(date);
}

+ (NSString *)formatWithJavaUtilDate:(JavaUtilDate *)date
                         withBoolean:(jboolean)millis {
  return GSONISO8601Utils_formatWithJavaUtilDate_withBoolean_(date, millis);
}

+ (NSString *)formatWithJavaUtilDate:(JavaUtilDate *)date
                         withBoolean:(jboolean)millis
                withJavaUtilTimeZone:(JavaUtilTimeZone *)tz {
  return GSONISO8601Utils_formatWithJavaUtilDate_withBoolean_withJavaUtilTimeZone_(date, millis, tz);
}

+ (JavaUtilDate *)parseWithNSString:(NSString *)date
          withJavaTextParsePosition:(JavaTextParsePosition *)pos {
  return GSONISO8601Utils_parseWithNSString_withJavaTextParsePosition_(date, pos);
}

+ (jboolean)checkOffsetWithNSString:(NSString *)value
                            withInt:(jint)offset
                           withChar:(jchar)expected {
  return GSONISO8601Utils_checkOffsetWithNSString_withInt_withChar_(value, offset, expected);
}

+ (jint)parseIntWithNSString:(NSString *)value
                     withInt:(jint)beginIndex
                     withInt:(jint)endIndex {
  return GSONISO8601Utils_parseIntWithNSString_withInt_withInt_(value, beginIndex, endIndex);
}

+ (void)padIntWithJavaLangStringBuilder:(JavaLangStringBuilder *)buffer
                                withInt:(jint)value
                                withInt:(jint)length {
  GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(buffer, value, length);
}

+ (jint)indexOfNonDigitWithNSString:(NSString *)string
                            withInt:(jint)offset {
  return GSONISO8601Utils_indexOfNonDigitWithNSString_withInt_(string, offset);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x9, 4, 5, 6, -1, -1, -1 },
    { NULL, "Z", 0xa, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 9, 10, 11, -1, -1, -1 },
    { NULL, "V", 0xa, 12, 13, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 14, 15, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(formatWithJavaUtilDate:);
  methods[2].selector = @selector(formatWithJavaUtilDate:withBoolean:);
  methods[3].selector = @selector(formatWithJavaUtilDate:withBoolean:withJavaUtilTimeZone:);
  methods[4].selector = @selector(parseWithNSString:withJavaTextParsePosition:);
  methods[5].selector = @selector(checkOffsetWithNSString:withInt:withChar:);
  methods[6].selector = @selector(parseIntWithNSString:withInt:withInt:);
  methods[7].selector = @selector(padIntWithJavaLangStringBuilder:withInt:withInt:);
  methods[8].selector = @selector(indexOfNonDigitWithNSString:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "UTC_ID", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 16, -1, -1 },
    { "TIMEZONE_UTC", "LJavaUtilTimeZone;", .constantValue.asLong = 0, 0x1a, -1, 17, -1, -1 },
  };
  static const void *ptrTable[] = { "format", "LJavaUtilDate;", "LJavaUtilDate;Z", "LJavaUtilDate;ZLJavaUtilTimeZone;", "parse", "LNSString;LJavaTextParsePosition;", "LJavaTextParseException;", "checkOffset", "LNSString;IC", "parseInt", "LNSString;II", "LJavaLangNumberFormatException;", "padInt", "LJavaLangStringBuilder;II", "indexOfNonDigit", "LNSString;I", &GSONISO8601Utils_UTC_ID, &GSONISO8601Utils_TIMEZONE_UTC };
  static const J2ObjcClassInfo _GSONISO8601Utils = { "ISO8601Utils", "com.google.gson.internal.bind.util", ptrTable, methods, fields, 7, 0x1, 9, 2, -1, -1, -1, -1, -1 };
  return &_GSONISO8601Utils;
}

+ (void)initialize {
  if (self == [GSONISO8601Utils class]) {
    GSONISO8601Utils_TIMEZONE_UTC = JavaUtilTimeZone_getTimeZoneWithNSString_(GSONISO8601Utils_UTC_ID);
    J2OBJC_SET_INITIALIZED(GSONISO8601Utils)
  }
}

@end

void GSONISO8601Utils_init(GSONISO8601Utils *self) {
  NSObject_init(self);
}

GSONISO8601Utils *new_GSONISO8601Utils_init() {
  J2OBJC_NEW_IMPL(GSONISO8601Utils, init)
}

GSONISO8601Utils *create_GSONISO8601Utils_init() {
  J2OBJC_CREATE_IMPL(GSONISO8601Utils, init)
}

NSString *GSONISO8601Utils_formatWithJavaUtilDate_(JavaUtilDate *date) {
  GSONISO8601Utils_initialize();
  return GSONISO8601Utils_formatWithJavaUtilDate_withBoolean_withJavaUtilTimeZone_(date, false, GSONISO8601Utils_TIMEZONE_UTC);
}

NSString *GSONISO8601Utils_formatWithJavaUtilDate_withBoolean_(JavaUtilDate *date, jboolean millis) {
  GSONISO8601Utils_initialize();
  return GSONISO8601Utils_formatWithJavaUtilDate_withBoolean_withJavaUtilTimeZone_(date, millis, GSONISO8601Utils_TIMEZONE_UTC);
}

NSString *GSONISO8601Utils_formatWithJavaUtilDate_withBoolean_withJavaUtilTimeZone_(JavaUtilDate *date, jboolean millis, JavaUtilTimeZone *tz) {
  GSONISO8601Utils_initialize();
  JavaUtilCalendar *calendar = new_JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(tz, JreLoadStatic(JavaUtilLocale, US));
  [calendar setTimeWithJavaUtilDate:date];
  jint capacity = [@"yyyy-MM-ddThh:mm:ss" java_length];
  capacity += millis ? [@".sss" java_length] : 0;
  capacity += [((JavaUtilTimeZone *) nil_chk(tz)) getRawOffset] == 0 ? [@"Z" java_length] : [@"+hh:mm" java_length];
  JavaLangStringBuilder *formatted = new_JavaLangStringBuilder_initWithInt_(capacity);
  GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(formatted, [calendar getWithInt:JavaUtilCalendar_YEAR], [@"yyyy" java_length]);
  (void) [formatted appendWithChar:'-'];
  GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(formatted, [calendar getWithInt:JavaUtilCalendar_MONTH] + 1, [@"MM" java_length]);
  (void) [formatted appendWithChar:'-'];
  GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(formatted, [calendar getWithInt:JavaUtilCalendar_DAY_OF_MONTH], [@"dd" java_length]);
  (void) [formatted appendWithChar:'T'];
  GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(formatted, [calendar getWithInt:JavaUtilCalendar_HOUR_OF_DAY], [@"hh" java_length]);
  (void) [formatted appendWithChar:':'];
  GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(formatted, [calendar getWithInt:JavaUtilCalendar_MINUTE], [@"mm" java_length]);
  (void) [formatted appendWithChar:':'];
  GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(formatted, [calendar getWithInt:JavaUtilCalendar_SECOND], [@"ss" java_length]);
  if (millis) {
    (void) [formatted appendWithChar:'.'];
    GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(formatted, [calendar getWithInt:JavaUtilCalendar_MILLISECOND], [@"sss" java_length]);
  }
  jint offset = [tz getOffsetWithLong:[calendar getTimeInMillis]];
  if (offset != 0) {
    jint hours = JavaLangMath_absWithInt_((offset / (60 * 1000)) / 60);
    jint minutes = JavaLangMath_absWithInt_((offset / (60 * 1000)) % 60);
    (void) [formatted appendWithChar:offset < 0 ? '-' : '+'];
    GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(formatted, hours, [@"hh" java_length]);
    (void) [formatted appendWithChar:':'];
    GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(formatted, minutes, [@"mm" java_length]);
  }
  else {
    (void) [formatted appendWithChar:'Z'];
  }
  return [formatted description];
}

JavaUtilDate *GSONISO8601Utils_parseWithNSString_withJavaTextParsePosition_(NSString *date, JavaTextParsePosition *pos) {
  GSONISO8601Utils_initialize();
  JavaLangException *fail = nil;
  @try {
    jint offset = [((JavaTextParsePosition *) nil_chk(pos)) getIndex];
    jint unseq$1 = offset;
    jint year = GSONISO8601Utils_parseIntWithNSString_withInt_withInt_(date, unseq$1, offset += 4);
    if (GSONISO8601Utils_checkOffsetWithNSString_withInt_withChar_(date, offset, '-')) {
      offset += 1;
    }
    jint unseq$2 = offset;
    jint month = GSONISO8601Utils_parseIntWithNSString_withInt_withInt_(date, unseq$2, offset += 2);
    if (GSONISO8601Utils_checkOffsetWithNSString_withInt_withChar_(date, offset, '-')) {
      offset += 1;
    }
    jint unseq$3 = offset;
    jint day = GSONISO8601Utils_parseIntWithNSString_withInt_withInt_(date, unseq$3, offset += 2);
    jint hour = 0;
    jint minutes = 0;
    jint seconds = 0;
    jint milliseconds = 0;
    jboolean hasT = GSONISO8601Utils_checkOffsetWithNSString_withInt_withChar_(date, offset, 'T');
    if (!hasT && ([((NSString *) nil_chk(date)) java_length] <= offset)) {
      JavaUtilCalendar *calendar = new_JavaUtilGregorianCalendar_initWithInt_withInt_withInt_(year, month - 1, day);
      [pos setIndexWithInt:offset];
      return [calendar getTime];
    }
    if (hasT) {
      jint unseq$4 = offset += 1;
      hour = GSONISO8601Utils_parseIntWithNSString_withInt_withInt_(date, unseq$4, offset += 2);
      if (GSONISO8601Utils_checkOffsetWithNSString_withInt_withChar_(date, offset, ':')) {
        offset += 1;
      }
      jint unseq$5 = offset;
      minutes = GSONISO8601Utils_parseIntWithNSString_withInt_withInt_(date, unseq$5, offset += 2);
      if (GSONISO8601Utils_checkOffsetWithNSString_withInt_withChar_(date, offset, ':')) {
        offset += 1;
      }
      if ([((NSString *) nil_chk(date)) java_length] > offset) {
        jchar c = [date charAtWithInt:offset];
        if (c != 'Z' && c != '+' && c != '-') {
          jint unseq$6 = offset;
          seconds = GSONISO8601Utils_parseIntWithNSString_withInt_withInt_(date, unseq$6, offset += 2);
          if (seconds > 59 && seconds < 63) seconds = 59;
          if (GSONISO8601Utils_checkOffsetWithNSString_withInt_withChar_(date, offset, '.')) {
            offset += 1;
            jint endOffset = GSONISO8601Utils_indexOfNonDigitWithNSString_withInt_(date, offset + 1);
            jint parseEndOffset = JavaLangMath_minWithInt_withInt_(endOffset, offset + 3);
            jint fraction = GSONISO8601Utils_parseIntWithNSString_withInt_withInt_(date, offset, parseEndOffset);
            switch (parseEndOffset - offset) {
              case 2:
              milliseconds = fraction * 10;
              break;
              case 1:
              milliseconds = fraction * 100;
              break;
              default:
              milliseconds = fraction;
            }
            offset = endOffset;
          }
        }
      }
    }
    if ([((NSString *) nil_chk(date)) java_length] <= offset) {
      @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"No time zone indicator");
    }
    JavaUtilTimeZone *timezone = nil;
    jchar timezoneIndicator = [date charAtWithInt:offset];
    if (timezoneIndicator == 'Z') {
      timezone = GSONISO8601Utils_TIMEZONE_UTC;
      offset += 1;
    }
    else if (timezoneIndicator == '+' || timezoneIndicator == '-') {
      NSString *timezoneOffset = [date java_substring:offset];
      timezoneOffset = [((NSString *) nil_chk(timezoneOffset)) java_length] >= 5 ? timezoneOffset : JreStrcat("$$", timezoneOffset, @"00");
      offset += [timezoneOffset java_length];
      if ([@"+0000" isEqual:timezoneOffset] || [@"+00:00" isEqual:timezoneOffset]) {
        timezone = GSONISO8601Utils_TIMEZONE_UTC;
      }
      else {
        NSString *timezoneId = JreStrcat("$$", @"GMT", timezoneOffset);
        timezone = JavaUtilTimeZone_getTimeZoneWithNSString_(timezoneId);
        NSString *act = [((JavaUtilTimeZone *) nil_chk(timezone)) getID];
        if (![((NSString *) nil_chk(act)) isEqual:timezoneId]) {
          NSString *cleaned = [act java_replace:@":" withSequence:@""];
          if (![((NSString *) nil_chk(cleaned)) isEqual:timezoneId]) {
            @throw new_JavaLangIndexOutOfBoundsException_initWithNSString_(JreStrcat("$$$$", @"Mismatching time zone indicator: ", timezoneId, @" given, resolves to ", [timezone getID]));
          }
        }
      }
    }
    else {
      @throw new_JavaLangIndexOutOfBoundsException_initWithNSString_(JreStrcat("$CC", @"Invalid time zone indicator '", timezoneIndicator, '\''));
    }
    JavaUtilCalendar *calendar = new_JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_(timezone);
    [calendar setLenientWithBoolean:false];
    [calendar setWithInt:JavaUtilCalendar_YEAR withInt:year];
    [calendar setWithInt:JavaUtilCalendar_MONTH withInt:month - 1];
    [calendar setWithInt:JavaUtilCalendar_DAY_OF_MONTH withInt:day];
    [calendar setWithInt:JavaUtilCalendar_HOUR_OF_DAY withInt:hour];
    [calendar setWithInt:JavaUtilCalendar_MINUTE withInt:minutes];
    [calendar setWithInt:JavaUtilCalendar_SECOND withInt:seconds];
    [calendar setWithInt:JavaUtilCalendar_MILLISECOND withInt:milliseconds];
    [pos setIndexWithInt:offset];
    return [calendar getTime];
  }
  @catch (JavaLangIndexOutOfBoundsException *e) {
    fail = e;
  }
  @catch (JavaLangNumberFormatException *e) {
    fail = e;
  }
  @catch (JavaLangIllegalArgumentException *e) {
    fail = e;
  }
  NSString *input = (date == nil) ? nil : (JreStrcat("C$C", '"', date, '"'));
  NSString *msg = [((JavaLangException *) nil_chk(fail)) getMessage];
  if (msg == nil || [msg java_isEmpty]) {
    msg = JreStrcat("C$C", '(', [[fail java_getClass] getName], ')');
  }
  JavaTextParseException *ex = new_JavaTextParseException_initWithNSString_withInt_(JreStrcat("$$$$", @"Failed to parse date [", input, @"]: ", msg), [pos getIndex]);
  (void) [ex initCauseWithJavaLangThrowable:fail];
  @throw ex;
}

jboolean GSONISO8601Utils_checkOffsetWithNSString_withInt_withChar_(NSString *value, jint offset, jchar expected) {
  GSONISO8601Utils_initialize();
  return (offset < [((NSString *) nil_chk(value)) java_length]) && ([value charAtWithInt:offset] == expected);
}

jint GSONISO8601Utils_parseIntWithNSString_withInt_withInt_(NSString *value, jint beginIndex, jint endIndex) {
  GSONISO8601Utils_initialize();
  if (beginIndex < 0 || endIndex > [((NSString *) nil_chk(value)) java_length] || beginIndex > endIndex) {
    @throw new_JavaLangNumberFormatException_initWithNSString_(value);
  }
  jint i = beginIndex;
  jint result = 0;
  jint digit;
  if (i < endIndex) {
    digit = JavaLangCharacter_digitWithChar_withInt_([((NSString *) nil_chk(value)) charAtWithInt:i++], 10);
    if (digit < 0) {
      @throw new_JavaLangNumberFormatException_initWithNSString_(JreStrcat("$$", @"Invalid number: ", [value java_substring:beginIndex endIndex:endIndex]));
    }
    result = -digit;
  }
  while (i < endIndex) {
    digit = JavaLangCharacter_digitWithChar_withInt_([((NSString *) nil_chk(value)) charAtWithInt:i++], 10);
    if (digit < 0) {
      @throw new_JavaLangNumberFormatException_initWithNSString_(JreStrcat("$$", @"Invalid number: ", [value java_substring:beginIndex endIndex:endIndex]));
    }
    result *= 10;
    result -= digit;
  }
  return -result;
}

void GSONISO8601Utils_padIntWithJavaLangStringBuilder_withInt_withInt_(JavaLangStringBuilder *buffer, jint value, jint length) {
  GSONISO8601Utils_initialize();
  NSString *strValue = JavaLangInteger_toStringWithInt_(value);
  for (jint i = length - [((NSString *) nil_chk(strValue)) java_length]; i > 0; i--) {
    (void) [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithChar:'0'];
  }
  (void) [((JavaLangStringBuilder *) nil_chk(buffer)) appendWithNSString:strValue];
}

jint GSONISO8601Utils_indexOfNonDigitWithNSString_withInt_(NSString *string, jint offset) {
  GSONISO8601Utils_initialize();
  for (jint i = offset; i < [((NSString *) nil_chk(string)) java_length]; i++) {
    jchar c = [string charAtWithInt:i];
    if (c < '0' || c > '9') return i;
  }
  return [string java_length];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONISO8601Utils)