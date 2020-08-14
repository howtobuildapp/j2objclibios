//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/TypeAdapterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_TypeAdapterFactory")
#ifdef RESTRICT_TypeAdapterFactory
#define INCLUDE_ALL_TypeAdapterFactory 0
#else
#define INCLUDE_ALL_TypeAdapterFactory 1
#endif
#undef RESTRICT_TypeAdapterFactory

#if !defined (GSONTypeAdapterFactory_) && (INCLUDE_ALL_TypeAdapterFactory || defined(INCLUDE_GSONTypeAdapterFactory))
#define GSONTypeAdapterFactory_

@class GSONGson;
@class GSONTypeAdapter;
@class GSONTypeToken;

/*!
 @brief Creates type adapters for set of related types.Type adapter factories are
  most useful when several types share similar structure in their JSON form.
 <h3>Example: Converting enums to lowercase</h3>
  In this example, we implement a factory that creates type adapters for all
  enums. The type adapters will write enums in lowercase, despite the fact
  that they're defined in <code>CONSTANT_CASE</code> in the corresponding Java
  model: @code
     public class LowercaseEnumTypeAdapterFactory implements TypeAdapterFactory {
      public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
        Class<T> rawType = (Class<T>) type.getRawType();
        if (!rawType.isEnum()) {
          return null;
        }
        final Map<String, T> lowercaseToConstant = new HashMap<String, T>();
        for (T constant : rawType.getEnumConstants()) {
          lowercaseToConstant.put(toLowercase(constant), constant);
        }
        return new TypeAdapter<T>() {
          public void write(JsonWriter out, T value) throws IOException {
            if (value == null) {
              out.nullValue();
            } else {
              out.value(toLowercase(value));
            }          }
          public T read(JsonReader reader) throws IOException {
            if (reader.peek() == JsonToken.NULL) {
              reader.nextNull();
              return null;
            } else {
              return lowercaseToConstant.get(reader.nextString());
            }          }
        };      }
      private String toLowercase(Object o) {
        return o.toString().toLowerCase(Locale.US);
      }    }  
 
@endcode
  
 <p>Type adapter factories select which types they provide type adapters
  for. If a factory cannot support a given type, it must return null when
  that type is passed to <code>create</code>. Factories should expect <code>create()</code>
  to be called on them for many types and should return null for
  most of those types. In the above example the factory returns null for
  calls to <code>create()</code> where <code>type</code> is not an enum. 
 <p>A factory is typically called once per type, but the returned type
  adapter may be used many times. It is most efficient to do expensive work
  like reflection in <code>create()</code> so that the type adapter's <code>read()</code>
  and <code>write()</code> methods can be very fast. In this example the
  mapping from lowercase name to enum value is computed eagerly. 
 <p>As with type adapters, factories must be <i>registered</i> with a <code>com.google.gson.GsonBuilder</code>
  for them to take effect: @code
    GsonBuilder builder = new GsonBuilder();
   builder.registerTypeAdapterFactory(new LowercaseEnumTypeAdapterFactory());
   ...
   Gson gson = builder.create(); 
 
@endcode
  If multiple factories support the same type, the factory registered earlier
  takes precedence. 
 <h3>Example: composing other type adapters</h3>
  In this example we implement a factory for Guava's <code>Multiset</code>
  collection type. The factory can be used to create type adapters for
  multisets of any element type: the type adapter for <code>Multiset<String></code>
  is different from the type adapter for <code>Multiset<URL></code>
 .
  
 <p>The type adapter <i>delegates</i> to another type adapter for the
  multiset elements. It figures out the element type by reflecting on the
  multiset's type token. A <code>Gson</code> is passed in to <code>create</code> for
  just this purpose: @code
     public class MultisetTypeAdapterFactory implements TypeAdapterFactory {
      public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        if (typeToken.getRawType() != Multiset.class
            || !(type instanceof ParameterizedType)) {
          return null;
        }
        Type elementType = ((ParameterizedType) type).getActualTypeArguments()[0];
        TypeAdapter<?> elementAdapter = gson.getAdapter(TypeToken.get(elementType));
        return (TypeAdapter<T>) newMultisetAdapter(elementAdapter);
      }
      private <E> TypeAdapter<Multiset<E>> newMultisetAdapter(
          final TypeAdapter<E> elementAdapter) {
        return new TypeAdapter<Multiset<E>>() {
          public void write(JsonWriter out, Multiset<E> value) throws IOException {
            if (value == null) {
              out.nullValue();
              return;
            }
            out.beginArray();
            for (Multiset.Entry<E> entry : value.entrySet()) {
              out.value(entry.getCount());
              elementAdapter.write(out, entry.getElement());
            }
            out.endArray();
          }
          public Multiset<E> read(JsonReader in) throws IOException {
            if (in.peek() == JsonToken.NULL) {
              in.nextNull();
              return null;
            }
            Multiset<E> result = LinkedHashMultiset.create();
            in.beginArray();
            while (in.hasNext()) {
              int count = in.nextInt();
              E element = elementAdapter.read(in);
              result.add(element, count);
            }
            in.endArray();
            return result;
          }
        };      }      }    
 
@endcode
  Delegating from one type adapter to another is extremely powerful; it's
  the foundation of how Gson converts Java objects and collections. Whenever
  possible your factory should retrieve its delegate type adapter in the 
 <code>create()</code> method; this ensures potentially-expensive type adapter
  creation happens only once.
 @since 2.1
 */
@protocol GSONTypeAdapterFactory < JavaObject >

/*!
 @brief Returns a type adapter for <code>type</code>, or null if this factory doesn't
  support <code>type</code>.
 */
- (GSONTypeAdapter *)createWithGSONGson:(GSONGson *)gson
                      withGSONTypeToken:(GSONTypeToken *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONTypeAdapterFactory)

J2OBJC_TYPE_LITERAL_HEADER(GSONTypeAdapterFactory)

#define ComGoogleGsonTypeAdapterFactory GSONTypeAdapterFactory

#endif

#pragma pop_macro("INCLUDE_ALL_TypeAdapterFactory")
