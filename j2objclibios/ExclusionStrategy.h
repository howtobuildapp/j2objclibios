//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/ExclusionStrategy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ExclusionStrategy")
#ifdef RESTRICT_ExclusionStrategy
#define INCLUDE_ALL_ExclusionStrategy 0
#else
#define INCLUDE_ALL_ExclusionStrategy 1
#endif
#undef RESTRICT_ExclusionStrategy

#if !defined (GSONExclusionStrategy_) && (INCLUDE_ALL_ExclusionStrategy || defined(INCLUDE_GSONExclusionStrategy))
#define GSONExclusionStrategy_

@class GSONFieldAttributes;
@class IOSClass;

/*!
 @brief A strategy (or policy) definition that is used to decide whether or not a field or top-level
  class should be serialized or deserialized as part of the JSON output/input.For serialization,
  if the <code>shouldSkipClass(Class)</code> method returns true then that class or field type
  will not be part of the JSON output.
 For deserialization, if <code>shouldSkipClass(Class)</code>
  returns true, then it will not be set as part of the Java object structure. 
 <p>The following are a few examples that shows how you can use this exclusion mechanism. 
 <p><strong>Exclude fields and objects based on a particular class type:</strong>
  <pre class="code">
  private static class SpecificClassExclusionStrategy implements ExclusionStrategy {
    private final Class&lt;?&gt; excludedThisClass;
    public SpecificClassExclusionStrategy(Class&lt;?&gt; excludedThisClass) {
      this.excludedThisClass = excludedThisClass;
    }
    public boolean shouldSkipClass(Class&lt;?&gt; clazz) {
      return excludedThisClass.equals(clazz);
    }
    public boolean shouldSkipField(FieldAttributes f) {
      return excludedThisClass.equals(f.getDeclaredClass());
    } } 
 
@endcode
  
 <p><strong>Excludes fields and objects based on a particular annotation:</strong>
  <pre class="code">
  public &#64interface FooAnnotation {
    // some implementation here
  }
  // Excludes any field (or class) that is tagged with an "&#64FooAnnotation"
  private static class FooAnnotationExclusionStrategy implements ExclusionStrategy {
    public boolean shouldSkipClass(Class&lt;?&gt; clazz) {
      return clazz.getAnnotation(FooAnnotation.class) != null;
    }
    public boolean shouldSkipField(FieldAttributes f) {
      return f.getAnnotation(FooAnnotation.class) != null;
    } } 
 
@endcode
  
 <p>Now if you want to configure <code>Gson</code> to use a user defined exclusion strategy, then
  the <code>GsonBuilder</code> is required. The following is an example of how you can use the 
 <code>GsonBuilder</code> to configure Gson to use one of the above sample: 
 <pre class="code">
  ExclusionStrategy excludeStrings = new UserDefinedExclusionStrategy(String.class);
  Gson gson = new GsonBuilder()
      .setExclusionStrategies(excludeStrings)
      .create(); 
 
@endcode
  
 <p>For certain model classes, you may only want to serialize a field, but exclude it for
  deserialization. To do that, you can write an <code>ExclusionStrategy</code> as per normal;
  however, you would register it with the 
 <code>GsonBuilder.addDeserializationExclusionStrategy(ExclusionStrategy)</code> method.
  For example: 
 <pre class="code">
  ExclusionStrategy excludeStrings = new UserDefinedExclusionStrategy(String.class);
  Gson gson = new GsonBuilder()
      .addDeserializationExclusionStrategy(excludeStrings)
      .create(); 
 
@endcode
 @author Inderjeet Singh
 @author Joel Leitch
 - seealso: GsonBuilder#setExclusionStrategies(ExclusionStrategy...)
 - seealso: GsonBuilder#addDeserializationExclusionStrategy(ExclusionStrategy)
 - seealso: GsonBuilder#addSerializationExclusionStrategy(ExclusionStrategy)
 @since 1.4
 */
@protocol GSONExclusionStrategy < JavaObject >

/*!
 @param f the field object that is under test
 @return true if the field should be ignored; otherwise false
 */
- (jboolean)shouldSkipFieldWithGSONFieldAttributes:(GSONFieldAttributes *)f;

/*!
 @param clazz the class object that is under test
 @return true if the class should be ignored; otherwise false
 */
- (jboolean)shouldSkipClassWithIOSClass:(IOSClass *)clazz;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONExclusionStrategy)

J2OBJC_TYPE_LITERAL_HEADER(GSONExclusionStrategy)

#define ComGoogleGsonExclusionStrategy GSONExclusionStrategy

#endif

#pragma pop_macro("INCLUDE_ALL_ExclusionStrategy")
