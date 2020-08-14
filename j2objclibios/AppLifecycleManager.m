//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libservice/platform/AppLifecycleManager.java
//

#include "AppLifecycleInterface.h"
#include "AppLifecycleManager.h"
#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"

@interface HTBAAppLifecycleManager () {
 @public
  JavaUtilArrayList *registerInfo_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(HTBAAppLifecycleManager, registerInfo_, JavaUtilArrayList *)

inline HTBAAppLifecycleManager *HTBAAppLifecycleManager_get_defaultInstance();
inline HTBAAppLifecycleManager *HTBAAppLifecycleManager_set_defaultInstance(HTBAAppLifecycleManager *value);
static HTBAAppLifecycleManager *HTBAAppLifecycleManager_defaultInstance;
J2OBJC_STATIC_FIELD_OBJ(HTBAAppLifecycleManager, defaultInstance, HTBAAppLifecycleManager *)

__attribute__((unused)) static void HTBAAppLifecycleManager_init(HTBAAppLifecycleManager *self);

__attribute__((unused)) static HTBAAppLifecycleManager *new_HTBAAppLifecycleManager_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static HTBAAppLifecycleManager *create_HTBAAppLifecycleManager_init();

@implementation HTBAAppLifecycleManager

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  HTBAAppLifecycleManager_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (HTBAAppLifecycleManager *)defaultManager {
  return HTBAAppLifecycleManager_defaultManager();
}

- (void)register__WithHTBAAppLifecycleInterface:(id<HTBAAppLifecycleInterface>)service {
  if (service == nil) {
    return;
  }
  [((JavaUtilArrayList *) nil_chk(registerInfo_)) addWithId:service];
}

- (void)unregisterWithHTBAAppLifecycleInterface:(id<HTBAAppLifecycleInterface>)servcie {
  [((JavaUtilArrayList *) nil_chk(registerInfo_)) removeWithId:servcie];
}

- (void)onAppStarted {
  for (id<HTBAAppLifecycleInterface> __strong servcie in nil_chk(registerInfo_)) {
    [((id<HTBAAppLifecycleInterface>) nil_chk(servcie)) onAppStarted];
  }
}

- (void)onAppEnteredBackground {
  for (id<HTBAAppLifecycleInterface> __strong servcie in nil_chk(registerInfo_)) {
    [((id<HTBAAppLifecycleInterface>) nil_chk(servcie)) onAppEnteredBackground];
  }
}

- (void)onAppExit {
  for (id<HTBAAppLifecycleInterface> __strong servcie in nil_chk(registerInfo_)) {
    [((id<HTBAAppLifecycleInterface>) nil_chk(servcie)) onAppExit];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LHTBAAppLifecycleManager;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(defaultManager);
  methods[2].selector = @selector(register__WithHTBAAppLifecycleInterface:);
  methods[3].selector = @selector(unregisterWithHTBAAppLifecycleInterface:);
  methods[4].selector = @selector(onAppStarted);
  methods[5].selector = @selector(onAppEnteredBackground);
  methods[6].selector = @selector(onAppExit);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "registerInfo_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x2, -1, -1, 3, -1 },
    { "defaultInstance", "LHTBAAppLifecycleManager;", .constantValue.asLong = 0, 0xa, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "register", "LHTBAAppLifecycleInterface;", "unregister", "Ljava/util/ArrayList<Lcom/github/howtobuildapp/libservice/platform/AppLifecycleInterface;>;", &HTBAAppLifecycleManager_defaultInstance };
  static const J2ObjcClassInfo _HTBAAppLifecycleManager = { "AppLifecycleManager", "com.github.howtobuildapp.libservice.platform", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, -1, -1, -1, -1 };
  return &_HTBAAppLifecycleManager;
}

@end

void HTBAAppLifecycleManager_init(HTBAAppLifecycleManager *self) {
  NSObject_init(self);
  self->registerInfo_ = new_JavaUtilArrayList_init();
}

HTBAAppLifecycleManager *new_HTBAAppLifecycleManager_init() {
  J2OBJC_NEW_IMPL(HTBAAppLifecycleManager, init)
}

HTBAAppLifecycleManager *create_HTBAAppLifecycleManager_init() {
  J2OBJC_CREATE_IMPL(HTBAAppLifecycleManager, init)
}

HTBAAppLifecycleManager *HTBAAppLifecycleManager_defaultManager() {
  HTBAAppLifecycleManager_initialize();
  if (HTBAAppLifecycleManager_defaultInstance == nil) {
    HTBAAppLifecycleManager_defaultInstance = new_HTBAAppLifecycleManager_init();
  }
  return HTBAAppLifecycleManager_defaultInstance;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(HTBAAppLifecycleManager)