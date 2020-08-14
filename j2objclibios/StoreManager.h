//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libservice/storage/StoreManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_StoreManager")
#ifdef RESTRICT_StoreManager
#define INCLUDE_ALL_StoreManager 0
#else
#define INCLUDE_ALL_StoreManager 1
#endif
#undef RESTRICT_StoreManager

#if !defined (HTBAStoreManager_) && (INCLUDE_ALL_StoreManager || defined(INCLUDE_HTBAStoreManager))
#define HTBAStoreManager_

@class IOSClass;

@interface HTBAStoreManager : NSObject {
 @public
  NSString *name_;
}

#pragma mark Public

+ (HTBAStoreManager *)defaultManager;

- (id)getObjWithNSString:(NSString *)key
            withIOSClass:(IOSClass *)cls;

- (NSString *)getStrWithNSString:(NSString *)key;

- (void)removeWithNSString:(NSString *)key;

- (void)removeAllExpired;

- (void)storeObjWithNSString:(NSString *)key
                      withId:(id)obj;

- (void)storeObjWithExpWithNSString:(NSString *)key
                             withId:(id)obj
                            withInt:(jint)seconds;

- (void)storeStrWithNSString:(NSString *)key
                withNSString:(NSString *)str;

- (void)storeStrWithExpWithNSString:(NSString *)key
                       withNSString:(NSString *)str
                            withInt:(jint)seconds;

@end

J2OBJC_EMPTY_STATIC_INIT(HTBAStoreManager)

J2OBJC_FIELD_SETTER(HTBAStoreManager, name_, NSString *)

FOUNDATION_EXPORT HTBAStoreManager *HTBAStoreManager_defaultManager();

J2OBJC_TYPE_LITERAL_HEADER(HTBAStoreManager)

@compatibility_alias ComGithubHowtobuildappLibserviceStorageStoreManager HTBAStoreManager;

#endif

#pragma pop_macro("INCLUDE_ALL_StoreManager")