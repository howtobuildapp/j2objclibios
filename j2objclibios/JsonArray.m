//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/JsonArray.java
//

#include "J2ObjC_source.h"
#include "JsonArray.h"
#include "JsonElement.h"
#include "JsonNull.h"
#include "JsonPrimitive.h"
#include "java/lang/Boolean.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Iterable.h"
#include "java/math/BigDecimal.h"
#include "java/math/BigInteger.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Spliterator.h"
#include "java/util/function/Consumer.h"

@interface GSONJsonArray () {
 @public
  id<JavaUtilList> elements_;
}

@end

J2OBJC_FIELD_SETTER(GSONJsonArray, elements_, id<JavaUtilList>)

@implementation GSONJsonArray

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GSONJsonArray_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)capacity {
  GSONJsonArray_initWithInt_(self, capacity);
  return self;
}

- (GSONJsonArray *)deepCopy {
  if (![((id<JavaUtilList>) nil_chk(elements_)) isEmpty]) {
    GSONJsonArray *result = new_GSONJsonArray_initWithInt_([elements_ size]);
    for (GSONJsonElement * __strong element in elements_) {
      [result addWithGSONJsonElement:[((GSONJsonElement *) nil_chk(element)) deepCopy]];
    }
    return result;
  }
  return new_GSONJsonArray_init();
}

- (void)addWithJavaLangBoolean:(JavaLangBoolean *)bool_ {
  [((id<JavaUtilList>) nil_chk(elements_)) addWithId:bool_ == nil ? JreLoadStatic(GSONJsonNull, INSTANCE) : (id) new_GSONJsonPrimitive_initWithJavaLangBoolean_(bool_)];
}

- (void)addWithJavaLangCharacter:(JavaLangCharacter *)character {
  [((id<JavaUtilList>) nil_chk(elements_)) addWithId:character == nil ? JreLoadStatic(GSONJsonNull, INSTANCE) : (id) new_GSONJsonPrimitive_initWithJavaLangCharacter_(character)];
}

- (void)addWithNSNumber:(NSNumber *)number {
  [((id<JavaUtilList>) nil_chk(elements_)) addWithId:number == nil ? JreLoadStatic(GSONJsonNull, INSTANCE) : (id) new_GSONJsonPrimitive_initWithNSNumber_(number)];
}

- (void)addWithNSString:(NSString *)string {
  [((id<JavaUtilList>) nil_chk(elements_)) addWithId:string == nil ? JreLoadStatic(GSONJsonNull, INSTANCE) : (id) new_GSONJsonPrimitive_initWithNSString_(string)];
}

- (void)addWithGSONJsonElement:(GSONJsonElement *)element {
  if (element == nil) {
    element = JreLoadStatic(GSONJsonNull, INSTANCE);
  }
  [((id<JavaUtilList>) nil_chk(elements_)) addWithId:element];
}

- (void)addAllWithGSONJsonArray:(GSONJsonArray *)array {
  [((id<JavaUtilList>) nil_chk(elements_)) addAllWithJavaUtilCollection:((GSONJsonArray *) nil_chk(array))->elements_];
}

- (GSONJsonElement *)setWithInt:(jint)index
            withGSONJsonElement:(GSONJsonElement *)element {
  return [((id<JavaUtilList>) nil_chk(elements_)) setWithInt:index withId:element];
}

- (jboolean)removeWithGSONJsonElement:(GSONJsonElement *)element {
  return [((id<JavaUtilList>) nil_chk(elements_)) removeWithId:element];
}

- (GSONJsonElement *)removeWithInt:(jint)index {
  return [((id<JavaUtilList>) nil_chk(elements_)) removeWithInt:index];
}

- (jboolean)containsWithGSONJsonElement:(GSONJsonElement *)element {
  return [((id<JavaUtilList>) nil_chk(elements_)) containsWithId:element];
}

- (jint)size {
  return [((id<JavaUtilList>) nil_chk(elements_)) size];
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilList>) nil_chk(elements_)) iterator];
}

- (GSONJsonElement *)getWithInt:(jint)i {
  return [((id<JavaUtilList>) nil_chk(elements_)) getWithInt:i];
}

- (NSNumber *)getAsNumber {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsNumber];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (NSString *)getAsString {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsString];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (jdouble)getAsDouble {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsDouble];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (JavaMathBigDecimal *)getAsBigDecimal {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsBigDecimal];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (JavaMathBigInteger *)getAsBigInteger {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsBigInteger];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (jfloat)getAsFloat {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsFloat];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (jlong)getAsLong {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsLong];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (jint)getAsInt {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsInt];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (jbyte)getAsByte {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsByte];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (jchar)getAsCharacter {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsCharacter];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (jshort)getAsShort {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsShort];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (jboolean)getAsBoolean {
  if ([((id<JavaUtilList>) nil_chk(elements_)) size] == 1) {
    return [((GSONJsonElement *) nil_chk([elements_ getWithInt:0])) getAsBoolean];
  }
  @throw new_JavaLangIllegalStateException_init();
}

- (jboolean)isEqual:(id)o {
  return (o == self) || ([o isKindOfClass:[GSONJsonArray class]] && [((id<JavaUtilList>) nil_chk(((GSONJsonArray *) nil_chk(((GSONJsonArray *) cast_chk(o, [GSONJsonArray class]))))->elements_)) isEqual:elements_]);
}

- (NSUInteger)hash {
  return ((jint) [((id<JavaUtilList>) nil_chk(elements_)) hash]);
}

- (void)forEachWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaLangIterable_forEachWithJavaUtilFunctionConsumer_(self, arg0);
}

- (id<JavaUtilSpliterator>)spliterator {
  return JavaLangIterable_spliterator(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LGSONJsonArray;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LGSONJsonElement;", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 6, -1, -1, -1, -1 },
    { NULL, "LGSONJsonElement;", 0x1, 11, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 13, -1, -1 },
    { NULL, "LGSONJsonElement;", 0x1, 14, 0, -1, -1, -1, -1 },
    { NULL, "LNSNumber;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigDecimal;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "C", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "S", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 17, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(deepCopy);
  methods[3].selector = @selector(addWithJavaLangBoolean:);
  methods[4].selector = @selector(addWithJavaLangCharacter:);
  methods[5].selector = @selector(addWithNSNumber:);
  methods[6].selector = @selector(addWithNSString:);
  methods[7].selector = @selector(addWithGSONJsonElement:);
  methods[8].selector = @selector(addAllWithGSONJsonArray:);
  methods[9].selector = @selector(setWithInt:withGSONJsonElement:);
  methods[10].selector = @selector(removeWithGSONJsonElement:);
  methods[11].selector = @selector(removeWithInt:);
  methods[12].selector = @selector(containsWithGSONJsonElement:);
  methods[13].selector = @selector(size);
  methods[14].selector = @selector(iterator);
  methods[15].selector = @selector(getWithInt:);
  methods[16].selector = @selector(getAsNumber);
  methods[17].selector = @selector(getAsString);
  methods[18].selector = @selector(getAsDouble);
  methods[19].selector = @selector(getAsBigDecimal);
  methods[20].selector = @selector(getAsBigInteger);
  methods[21].selector = @selector(getAsFloat);
  methods[22].selector = @selector(getAsLong);
  methods[23].selector = @selector(getAsInt);
  methods[24].selector = @selector(getAsByte);
  methods[25].selector = @selector(getAsCharacter);
  methods[26].selector = @selector(getAsShort);
  methods[27].selector = @selector(getAsBoolean);
  methods[28].selector = @selector(isEqual:);
  methods[29].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "elements_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 18, -1 },
  };
  static const void *ptrTable[] = { "I", "add", "LJavaLangBoolean;", "LJavaLangCharacter;", "LNSNumber;", "LNSString;", "LGSONJsonElement;", "addAll", "LGSONJsonArray;", "set", "ILGSONJsonElement;", "remove", "contains", "()Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;", "get", "equals", "LNSObject;", "hashCode", "Ljava/util/List<Lcom/google/gson/JsonElement;>;", "Lcom/google/gson/JsonElement;Ljava/lang/Iterable<Lcom/google/gson/JsonElement;>;" };
  static const J2ObjcClassInfo _GSONJsonArray = { "JsonArray", "com.google.gson", ptrTable, methods, fields, 7, 0x11, 30, 1, -1, -1, -1, 19, -1 };
  return &_GSONJsonArray;
}

@end

void GSONJsonArray_init(GSONJsonArray *self) {
  GSONJsonElement_init(self);
  self->elements_ = new_JavaUtilArrayList_init();
}

GSONJsonArray *new_GSONJsonArray_init() {
  J2OBJC_NEW_IMPL(GSONJsonArray, init)
}

GSONJsonArray *create_GSONJsonArray_init() {
  J2OBJC_CREATE_IMPL(GSONJsonArray, init)
}

void GSONJsonArray_initWithInt_(GSONJsonArray *self, jint capacity) {
  GSONJsonElement_init(self);
  self->elements_ = new_JavaUtilArrayList_initWithInt_(capacity);
}

GSONJsonArray *new_GSONJsonArray_initWithInt_(jint capacity) {
  J2OBJC_NEW_IMPL(GSONJsonArray, initWithInt_, capacity)
}

GSONJsonArray *create_GSONJsonArray_initWithInt_(jint capacity) {
  J2OBJC_CREATE_IMPL(GSONJsonArray, initWithInt_, capacity)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GSONJsonArray)