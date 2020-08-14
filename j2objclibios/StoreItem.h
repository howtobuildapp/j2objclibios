//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libservice/storage/StoreItem.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_StoreItem")
#ifdef RESTRICT_StoreItem
#define INCLUDE_ALL_StoreItem 0
#else
#define INCLUDE_ALL_StoreItem 1
#endif
#undef RESTRICT_StoreItem

#if !defined (HTBAStoreItem_) && (INCLUDE_ALL_StoreItem || defined(INCLUDE_HTBAStoreItem))
#define HTBAStoreItem_

@interface HTBAStoreItem : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)getExpire;

- (NSString *)getKey;

- (jlong)getTimestamp;

- (NSString *)getValue;

- (void)setExpireWithInt:(jint)expire;

- (void)setKeyWithNSString:(NSString *)key;

- (void)setTimestampWithLong:(jlong)timestamp;

- (void)setValueWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(HTBAStoreItem)

FOUNDATION_EXPORT void HTBAStoreItem_init(HTBAStoreItem *self);

FOUNDATION_EXPORT HTBAStoreItem *new_HTBAStoreItem_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT HTBAStoreItem *create_HTBAStoreItem_init();

J2OBJC_TYPE_LITERAL_HEADER(HTBAStoreItem)

@compatibility_alias ComGithubHowtobuildappLibserviceStorageStoreItem HTBAStoreItem;

#endif

#pragma pop_macro("INCLUDE_ALL_StoreItem")