//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libservice/storage/StoreKVResponse.java
//

#include "J2ObjC_source.h"
#include "Response.h"
#include "StoreItem.h"
#include "StoreKVResponse.h"

@implementation HTBAStoreKVResponse

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  HTBAStoreKVResponse_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (HTBAStoreItem *)getResultItem {
  if ([self getResult] != nil && [[self getResult] isKindOfClass:[HTBAStoreItem class]]) {
    return (HTBAStoreItem *) cast_chk([self getResult], [HTBAStoreItem class]);
  }
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LHTBAStoreItem;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getResultItem);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _HTBAStoreKVResponse = { "StoreKVResponse", "com.github.howtobuildapp.libservice.storage", NULL, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_HTBAStoreKVResponse;
}

@end

void HTBAStoreKVResponse_init(HTBAStoreKVResponse *self) {
  HTBAResponse_init(self);
}

HTBAStoreKVResponse *new_HTBAStoreKVResponse_init() {
  J2OBJC_NEW_IMPL(HTBAStoreKVResponse, init)
}

HTBAStoreKVResponse *create_HTBAStoreKVResponse_init() {
  J2OBJC_CREATE_IMPL(HTBAStoreKVResponse, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(HTBAStoreKVResponse)
