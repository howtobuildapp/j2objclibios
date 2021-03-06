//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libservice/storage/StoreManager.java
//

#include "EM.h"
#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "Response.h"
#include "StoreItem.h"
#include "StoreKVRequest.h"
#include "StoreKVResponse.h"
#include "StoreManager.h"
#include "SyncExecutorManager.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@interface HTBAStoreManager () {
 @public
  JavaUtilHashMap *data_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(HTBAStoreManager, data_, JavaUtilHashMap *)

inline HTBAStoreManager *HTBAStoreManager_get_defaultInstance();
inline HTBAStoreManager *HTBAStoreManager_set_defaultInstance(HTBAStoreManager *value);
static HTBAStoreManager *HTBAStoreManager_defaultInstance;
J2OBJC_STATIC_FIELD_OBJ(HTBAStoreManager, defaultInstance, HTBAStoreManager *)

__attribute__((unused)) static void HTBAStoreManager_init(HTBAStoreManager *self);

__attribute__((unused)) static HTBAStoreManager *new_HTBAStoreManager_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static HTBAStoreManager *create_HTBAStoreManager_init();

@implementation HTBAStoreManager

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  HTBAStoreManager_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (HTBAStoreManager *)defaultManager {
  return HTBAStoreManager_defaultManager();
}

- (void)storeStrWithNSString:(NSString *)key
                withNSString:(NSString *)str {
  [self storeStrWithExpWithNSString:key withNSString:str withInt:0];
}

- (void)storeStrWithExpWithNSString:(NSString *)key
                       withNSString:(NSString *)str
                            withInt:(jint)seconds {
  if (key == nil || str == nil) {
    return;
  }
  jlong now = JavaLangSystem_currentTimeMillis();
  HTBAStoreItem *item = new_HTBAStoreItem_init();
  [item setKeyWithNSString:key];
  [item setTimestampWithLong:now];
  [item setValueWithNSString:str];
  [item setExpireWithInt:seconds];
  (void) [((JavaUtilHashMap *) nil_chk(data_)) putWithId:key withId:item];
  HTBAStoreKVRequest *request = new_HTBAStoreKVRequest_init();
  [request setItemWithHTBAStoreItem:item];
  [request setFromWithNSString:self->name_];
  [request setOperationWithInt:JreLoadStatic(HTBAStoreKVRequest, operationStore)];
  (void) [((HTBASyncExecutorManager *) nil_chk(JreLoadStatic(HTBAEM, mainSyncManager))) executeRequestSyncWithHTBARequest:request];
}

- (NSString *)getStrWithNSString:(NSString *)key {
  if (key == nil) {
    return nil;
  }
  HTBAStoreItem *item = [((JavaUtilHashMap *) nil_chk(data_)) getWithId:key];
  if (item == nil) {
    item = new_HTBAStoreItem_init();
    [item setKeyWithNSString:key];
    HTBAStoreKVRequest *request = new_HTBAStoreKVRequest_init();
    [request setItemWithHTBAStoreItem:item];
    [request setFromWithNSString:self->name_];
    [request setOperationWithInt:JreLoadStatic(HTBAStoreKVRequest, operationGet)];
    HTBAResponse *response = [((HTBASyncExecutorManager *) nil_chk(JreLoadStatic(HTBAEM, mainSyncManager))) executeRequestSyncWithHTBARequest:request];
    if (response == nil || !([response isKindOfClass:[HTBAStoreKVResponse class]])) {
      return nil;
    }
    HTBAStoreKVResponse *kvResponse = (HTBAStoreKVResponse *) cast_chk(response, [HTBAStoreKVResponse class]);
    if (![kvResponse isOK]) {
      return nil;
    }
    item = [kvResponse getResultItem];
    if (item == nil) {
      return nil;
    }
    (void) [((JavaUtilHashMap *) nil_chk(data_)) putWithId:key withId:item];
  }
  jlong now = JavaLangSystem_currentTimeMillis();
  if ([item getExpire] > 0 && now - [item getTimestamp] > [item getExpire] * 1000) {
    [self removeWithNSString:key];
    return nil;
  }
  return [item getValue];
}

- (void)removeWithNSString:(NSString *)key {
  if (key == nil) {
    return;
  }
  (void) [((JavaUtilHashMap *) nil_chk(data_)) removeWithId:key];
  HTBAStoreItem *item = new_HTBAStoreItem_init();
  [item setKeyWithNSString:key];
  HTBAStoreKVRequest *request = new_HTBAStoreKVRequest_init();
  [request setItemWithHTBAStoreItem:item];
  [request setFromWithNSString:self->name_];
  [request setOperationWithInt:JreLoadStatic(HTBAStoreKVRequest, operationRemove)];
  (void) [((HTBASyncExecutorManager *) nil_chk(JreLoadStatic(HTBAEM, mainSyncManager))) executeRequestSyncWithHTBARequest:request];
}

- (void)storeObjWithNSString:(NSString *)key
                      withId:(id)obj {
  [self storeObjWithExpWithNSString:key withId:obj withInt:0];
}

- (void)storeObjWithExpWithNSString:(NSString *)key
                             withId:(id)obj
                            withInt:(jint)seconds {
  if (key == nil || obj == nil) {
    return;
  }
  GSONGson *gson = new_GSONGson_init();
  [self storeStrWithExpWithNSString:key withNSString:[gson toJsonWithId:obj] withInt:seconds];
}

- (id)getObjWithNSString:(NSString *)key
            withIOSClass:(IOSClass *)cls {
  NSString *jstr = [self getStrWithNSString:key];
  if (jstr == nil) {
    return nil;
  }
  GSONGson *gson = new_GSONGson_init();
  return [gson fromJsonWithNSString:jstr withIOSClass:cls];
}

- (void)removeAllExpired {
  id<JavaUtilList> list = new_JavaUtilArrayList_init();
  jlong now = JavaLangSystem_currentTimeMillis();
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((JavaUtilHashMap *) nil_chk(data_)) entrySet])) {
    HTBAStoreItem *item = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue];
    if ([((HTBAStoreItem *) nil_chk(item)) getExpire] > 0 && now - [item getTimestamp] > [item getExpire] * 1000) {
      [list addWithId:[entry_ getKey]];
    }
  }
  for (NSString * __strong k in list) {
    (void) [((JavaUtilHashMap *) nil_chk(data_)) removeWithId:k];
  }
  HTBAStoreKVRequest *request = new_HTBAStoreKVRequest_init();
  [request setFromWithNSString:self->name_];
  [request setOperationWithInt:JreLoadStatic(HTBAStoreKVRequest, operationRemoveAllExpired)];
  (void) [((HTBASyncExecutorManager *) nil_chk(JreLoadStatic(HTBAEM, mainSyncManager))) executeRequestSyncWithHTBARequest:request];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LHTBAStoreManager;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(defaultManager);
  methods[2].selector = @selector(storeStrWithNSString:withNSString:);
  methods[3].selector = @selector(storeStrWithExpWithNSString:withNSString:withInt:);
  methods[4].selector = @selector(getStrWithNSString:);
  methods[5].selector = @selector(removeWithNSString:);
  methods[6].selector = @selector(storeObjWithNSString:withId:);
  methods[7].selector = @selector(storeObjWithExpWithNSString:withId:withInt:);
  methods[8].selector = @selector(getObjWithNSString:withIOSClass:);
  methods[9].selector = @selector(removeAllExpired);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "data_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x2, -1, -1, 13, -1 },
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "defaultInstance", "LHTBAStoreManager;", .constantValue.asLong = 0, 0xa, -1, 14, -1, -1 },
  };
  static const void *ptrTable[] = { "storeStr", "LNSString;LNSString;", "storeStrWithExp", "LNSString;LNSString;I", "getStr", "LNSString;", "remove", "storeObj", "LNSString;LNSObject;", "storeObjWithExp", "LNSString;LNSObject;I", "getObj", "LNSString;LIOSClass;", "Ljava/util/HashMap<Ljava/lang/String;Lcom/github/howtobuildapp/libservice/storage/StoreItem;>;", &HTBAStoreManager_defaultInstance };
  static const J2ObjcClassInfo _HTBAStoreManager = { "StoreManager", "com.github.howtobuildapp.libservice.storage", ptrTable, methods, fields, 7, 0x1, 10, 3, -1, -1, -1, -1, -1 };
  return &_HTBAStoreManager;
}

@end

void HTBAStoreManager_init(HTBAStoreManager *self) {
  NSObject_init(self);
  self->data_ = new_JavaUtilHashMap_init();
}

HTBAStoreManager *new_HTBAStoreManager_init() {
  J2OBJC_NEW_IMPL(HTBAStoreManager, init)
}

HTBAStoreManager *create_HTBAStoreManager_init() {
  J2OBJC_CREATE_IMPL(HTBAStoreManager, init)
}

HTBAStoreManager *HTBAStoreManager_defaultManager() {
  HTBAStoreManager_initialize();
  if (HTBAStoreManager_defaultInstance == nil) {
    HTBAStoreManager_defaultInstance = new_HTBAStoreManager_init();
    HTBAStoreManager_defaultInstance->name_ = @"default";
  }
  return HTBAStoreManager_defaultInstance;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(HTBAStoreManager)
