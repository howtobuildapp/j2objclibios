//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/github/howtobuildapp/libvm/ViewModel.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ViewModel")
#ifdef RESTRICT_ViewModel
#define INCLUDE_ALL_ViewModel 0
#else
#define INCLUDE_ALL_ViewModel 1
#endif
#undef RESTRICT_ViewModel

#if !defined (HTBAViewModel_) && (INCLUDE_ALL_ViewModel || defined(INCLUDE_HTBAViewModel))
#define HTBAViewModel_

#define RESTRICT_ViewInterface 1
#define INCLUDE_HTBAViewInterface 1
#include "ViewInterface.h"

#define RESTRICT_ViewModelInterface 1
#define INCLUDE_HTBAViewModelInterface 1
#include "ViewModelInterface.h"

@interface HTBAViewModel : NSObject < HTBAViewInterface, HTBAViewModelInterface >

#pragma mark Public

- (instancetype)init;

- (void)cancel;

+ (jint)getNextSerial;

- (void)hideLoading;

- (void)operationFinishedWithInt:(jint)serial
                     withBoolean:(jboolean)isSucceed;

- (void)setViewWithHTBAViewInterface:(id<HTBAViewInterface>)view;

- (void)showAlertWithNSString:(NSString *)title
                 withNSString:(NSString *)msg;

- (void)showHudWithNSString:(NSString *)msg;

- (void)showLoading;

@end

J2OBJC_EMPTY_STATIC_INIT(HTBAViewModel)

FOUNDATION_EXPORT void HTBAViewModel_init(HTBAViewModel *self);

FOUNDATION_EXPORT HTBAViewModel *new_HTBAViewModel_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT HTBAViewModel *create_HTBAViewModel_init();

FOUNDATION_EXPORT jint HTBAViewModel_getNextSerial();

J2OBJC_TYPE_LITERAL_HEADER(HTBAViewModel)

@compatibility_alias ComGithubHowtobuildappLibvmViewModel HTBAViewModel;

#endif

#pragma pop_macro("INCLUDE_ALL_ViewModel")
