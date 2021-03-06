//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/LinkedTreeMap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LinkedTreeMap")
#ifdef RESTRICT_LinkedTreeMap
#define INCLUDE_ALL_LinkedTreeMap 0
#else
#define INCLUDE_ALL_LinkedTreeMap 1
#endif
#undef RESTRICT_LinkedTreeMap

#if !defined (GSONLinkedTreeMap_) && (INCLUDE_ALL_LinkedTreeMap || defined(INCLUDE_GSONLinkedTreeMap))
#define GSONLinkedTreeMap_

#define RESTRICT_JavaUtilAbstractMap 1
#define INCLUDE_JavaUtilAbstractMap 1
#include "java/util/AbstractMap.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class GSONLinkedTreeMap_Node;
@protocol JavaUtilComparator;
@protocol JavaUtilMap_Entry;
@protocol JavaUtilSet;

/*!
 @brief A map of comparable keys to values.Unlike <code>TreeMap</code>, this class uses
  insertion order for iteration order.
 Comparison order is only used as an
  optimization for efficient insertion and removal. 
 <p>This implementation was derived from Android 4.1's TreeMap class.
 */
@interface GSONLinkedTreeMap : JavaUtilAbstractMap < JavaIoSerializable > {
 @public
  id<JavaUtilComparator> comparator_;
  GSONLinkedTreeMap_Node *root_;
  jint size_;
  jint modCount_;
  GSONLinkedTreeMap_Node *header_;
}

#pragma mark Public

/*!
 @brief Create a natural order, empty tree map whose keys must be mutually
  comparable and non-null.
 */
- (instancetype)init;

/*!
 @brief Create a tree map ordered by <code>comparator</code>.This map's keys may only
  be null if <code>comparator</code> permits.
 @param comparator the comparator to order elements with, or <code>null</code>  to
       use the natural ordering.
 */
- (instancetype)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;

- (void)clear;

- (jboolean)containsKeyWithId:(id)key;

- (id<JavaUtilSet>)entrySet;

- (id)getWithId:(id)key;

- (id<JavaUtilSet>)keySet;

- (id)putWithId:(id)key
         withId:(id)value;

- (id)removeWithId:(id)key;

- (jint)size;

#pragma mark Package-Private

/*!
 @brief Returns the node at or adjacent to the given key, creating it if requested.
 @throw ClassCastExceptionif <code>key</code> and the tree's keys aren't
      mutually comparable.
 */
- (GSONLinkedTreeMap_Node *)findWithId:(id)key
                           withBoolean:(jboolean)create;

/*!
 @brief Returns this map's entry that has the same key and value as <code>entry</code>
 , or null if this map has no such entry.
 <p>This method uses the comparator for key equality rather than <code>equals</code>
 . If this map's comparator isn't consistent with equals (such as 
 <code>String.CASE_INSENSITIVE_ORDER</code>), then <code>remove()</code> and <code>contains()</code>
  will violate the collections API.
 */
- (GSONLinkedTreeMap_Node *)findByEntryWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)entry_;

- (GSONLinkedTreeMap_Node *)findByObjectWithId:(id)key;

/*!
 @brief Removes <code>node</code> from this tree, rearranging the tree's structure as
  necessary.
 @param unlink true to also unlink this node from the iteration linked list.
 */
- (void)removeInternalWithGSONLinkedTreeMap_Node:(GSONLinkedTreeMap_Node *)node
                                     withBoolean:(jboolean)unlink;

- (GSONLinkedTreeMap_Node *)removeInternalByKeyWithId:(id)key;

@end

J2OBJC_STATIC_INIT(GSONLinkedTreeMap)

J2OBJC_FIELD_SETTER(GSONLinkedTreeMap, comparator_, id<JavaUtilComparator>)
J2OBJC_FIELD_SETTER(GSONLinkedTreeMap, root_, GSONLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedTreeMap, header_, GSONLinkedTreeMap_Node *)

FOUNDATION_EXPORT void GSONLinkedTreeMap_init(GSONLinkedTreeMap *self);

FOUNDATION_EXPORT GSONLinkedTreeMap *new_GSONLinkedTreeMap_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedTreeMap *create_GSONLinkedTreeMap_init();

FOUNDATION_EXPORT void GSONLinkedTreeMap_initWithJavaUtilComparator_(GSONLinkedTreeMap *self, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT GSONLinkedTreeMap *new_GSONLinkedTreeMap_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedTreeMap *create_GSONLinkedTreeMap_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator);

J2OBJC_TYPE_LITERAL_HEADER(GSONLinkedTreeMap)

@compatibility_alias ComGoogleGsonInternalLinkedTreeMap GSONLinkedTreeMap;

#endif

#if !defined (GSONLinkedTreeMap_Node_) && (INCLUDE_ALL_LinkedTreeMap || defined(INCLUDE_GSONLinkedTreeMap_Node))
#define GSONLinkedTreeMap_Node_

#define RESTRICT_JavaUtilMap 1
#define INCLUDE_JavaUtilMap_Entry 1
#include "java/util/Map.h"

@interface GSONLinkedTreeMap_Node : NSObject < JavaUtilMap_Entry > {
 @public
  GSONLinkedTreeMap_Node *parent_;
  GSONLinkedTreeMap_Node *left_;
  GSONLinkedTreeMap_Node *right_;
  GSONLinkedTreeMap_Node *next_;
  GSONLinkedTreeMap_Node *prev_;
  id key_;
  id value_;
  jint height_;
}

#pragma mark Public

- (jboolean)isEqual:(id)o;

/*!
 @brief Returns the first node in this subtree.
 */
- (GSONLinkedTreeMap_Node *)first;

- (id)getKey;

- (id)getValue;

- (NSUInteger)hash;

/*!
 @brief Returns the last node in this subtree.
 */
- (GSONLinkedTreeMap_Node *)last;

- (id)setValueWithId:(id)value;

- (NSString *)description;

#pragma mark Package-Private

/*!
 @brief Create the header entry
 */
- (instancetype)init;

/*!
 @brief Create a regular entry
 */
- (instancetype)initWithGSONLinkedTreeMap_Node:(GSONLinkedTreeMap_Node *)parent
                                        withId:(id)key
                    withGSONLinkedTreeMap_Node:(GSONLinkedTreeMap_Node *)next
                    withGSONLinkedTreeMap_Node:(GSONLinkedTreeMap_Node *)prev;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONLinkedTreeMap_Node)

J2OBJC_FIELD_SETTER(GSONLinkedTreeMap_Node, parent_, GSONLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedTreeMap_Node, left_, GSONLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedTreeMap_Node, right_, GSONLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedTreeMap_Node, next_, GSONLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedTreeMap_Node, prev_, GSONLinkedTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedTreeMap_Node, key_, id)
J2OBJC_FIELD_SETTER(GSONLinkedTreeMap_Node, value_, id)

FOUNDATION_EXPORT void GSONLinkedTreeMap_Node_init(GSONLinkedTreeMap_Node *self);

FOUNDATION_EXPORT GSONLinkedTreeMap_Node *new_GSONLinkedTreeMap_Node_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedTreeMap_Node *create_GSONLinkedTreeMap_Node_init();

FOUNDATION_EXPORT void GSONLinkedTreeMap_Node_initWithGSONLinkedTreeMap_Node_withId_withGSONLinkedTreeMap_Node_withGSONLinkedTreeMap_Node_(GSONLinkedTreeMap_Node *self, GSONLinkedTreeMap_Node *parent, id key, GSONLinkedTreeMap_Node *next, GSONLinkedTreeMap_Node *prev);

FOUNDATION_EXPORT GSONLinkedTreeMap_Node *new_GSONLinkedTreeMap_Node_initWithGSONLinkedTreeMap_Node_withId_withGSONLinkedTreeMap_Node_withGSONLinkedTreeMap_Node_(GSONLinkedTreeMap_Node *parent, id key, GSONLinkedTreeMap_Node *next, GSONLinkedTreeMap_Node *prev) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedTreeMap_Node *create_GSONLinkedTreeMap_Node_initWithGSONLinkedTreeMap_Node_withId_withGSONLinkedTreeMap_Node_withGSONLinkedTreeMap_Node_(GSONLinkedTreeMap_Node *parent, id key, GSONLinkedTreeMap_Node *next, GSONLinkedTreeMap_Node *prev);

J2OBJC_TYPE_LITERAL_HEADER(GSONLinkedTreeMap_Node)

#endif

#if !defined (GSONLinkedTreeMap_EntrySet_) && (INCLUDE_ALL_LinkedTreeMap || defined(INCLUDE_GSONLinkedTreeMap_EntrySet))
#define GSONLinkedTreeMap_EntrySet_

#define RESTRICT_JavaUtilAbstractSet 1
#define INCLUDE_JavaUtilAbstractSet 1
#include "java/util/AbstractSet.h"

@class GSONLinkedTreeMap;
@protocol JavaUtilIterator;

@interface GSONLinkedTreeMap_EntrySet : JavaUtilAbstractSet

#pragma mark Public

- (void)clear;

- (jboolean)containsWithId:(id)o;

- (id<JavaUtilIterator>)iterator;

- (jboolean)removeWithId:(id)o;

- (jint)size;

#pragma mark Package-Private

- (instancetype)initWithGSONLinkedTreeMap:(GSONLinkedTreeMap *)outer$;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONLinkedTreeMap_EntrySet)

FOUNDATION_EXPORT void GSONLinkedTreeMap_EntrySet_initWithGSONLinkedTreeMap_(GSONLinkedTreeMap_EntrySet *self, GSONLinkedTreeMap *outer$);

FOUNDATION_EXPORT GSONLinkedTreeMap_EntrySet *new_GSONLinkedTreeMap_EntrySet_initWithGSONLinkedTreeMap_(GSONLinkedTreeMap *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedTreeMap_EntrySet *create_GSONLinkedTreeMap_EntrySet_initWithGSONLinkedTreeMap_(GSONLinkedTreeMap *outer$);

J2OBJC_TYPE_LITERAL_HEADER(GSONLinkedTreeMap_EntrySet)

#endif

#if !defined (GSONLinkedTreeMap_KeySet_) && (INCLUDE_ALL_LinkedTreeMap || defined(INCLUDE_GSONLinkedTreeMap_KeySet))
#define GSONLinkedTreeMap_KeySet_

#define RESTRICT_JavaUtilAbstractSet 1
#define INCLUDE_JavaUtilAbstractSet 1
#include "java/util/AbstractSet.h"

@class GSONLinkedTreeMap;
@protocol JavaUtilIterator;

@interface GSONLinkedTreeMap_KeySet : JavaUtilAbstractSet

#pragma mark Public

- (void)clear;

- (jboolean)containsWithId:(id)o;

- (id<JavaUtilIterator>)iterator;

- (jboolean)removeWithId:(id)key;

- (jint)size;

#pragma mark Package-Private

- (instancetype)initWithGSONLinkedTreeMap:(GSONLinkedTreeMap *)outer$;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONLinkedTreeMap_KeySet)

FOUNDATION_EXPORT void GSONLinkedTreeMap_KeySet_initWithGSONLinkedTreeMap_(GSONLinkedTreeMap_KeySet *self, GSONLinkedTreeMap *outer$);

FOUNDATION_EXPORT GSONLinkedTreeMap_KeySet *new_GSONLinkedTreeMap_KeySet_initWithGSONLinkedTreeMap_(GSONLinkedTreeMap *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedTreeMap_KeySet *create_GSONLinkedTreeMap_KeySet_initWithGSONLinkedTreeMap_(GSONLinkedTreeMap *outer$);

J2OBJC_TYPE_LITERAL_HEADER(GSONLinkedTreeMap_KeySet)

#endif

#pragma pop_macro("INCLUDE_ALL_LinkedTreeMap")
