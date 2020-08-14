//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/zhangwen/Documents/zwdir/sync/workspace/howtobuildapp/j2objclibios/javasrc/com/google/gson/internal/LinkedHashTreeMap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LinkedHashTreeMap")
#ifdef RESTRICT_LinkedHashTreeMap
#define INCLUDE_ALL_LinkedHashTreeMap 0
#else
#define INCLUDE_ALL_LinkedHashTreeMap 1
#endif
#undef RESTRICT_LinkedHashTreeMap

#if !defined (GSONLinkedHashTreeMap_) && (INCLUDE_ALL_LinkedHashTreeMap || defined(INCLUDE_GSONLinkedHashTreeMap))
#define GSONLinkedHashTreeMap_

#define RESTRICT_JavaUtilAbstractMap 1
#define INCLUDE_JavaUtilAbstractMap 1
#include "java/util/AbstractMap.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class GSONLinkedHashTreeMap_Node;
@class IOSObjectArray;
@protocol JavaUtilComparator;
@protocol JavaUtilMap_Entry;
@protocol JavaUtilSet;

/*!
 @brief A map of comparable keys to values.Unlike <code>TreeMap</code>, this class uses
  insertion order for iteration order.
 Comparison order is only used as an
  optimization for efficient insertion and removal. 
 <p>This implementation was derived from Android 4.1's TreeMap and
  LinkedHashMap classes.
 */
@interface GSONLinkedHashTreeMap : JavaUtilAbstractMap < JavaIoSerializable > {
 @public
  id<JavaUtilComparator> comparator_;
  IOSObjectArray *table_;
  GSONLinkedHashTreeMap_Node *header_;
  jint size_;
  jint modCount_;
  jint threshold_;
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
 @brief Returns a new array containing the same nodes as <code>oldTable</code>, but with
  twice as many trees, each of (approximately) half the previous size.
 */
+ (IOSObjectArray *)doubleCapacityWithGSONLinkedHashTreeMap_NodeArray:(IOSObjectArray *)oldTable;

/*!
 @brief Returns the node at or adjacent to the given key, creating it if requested.
 @throw ClassCastExceptionif <code>key</code> and the tree's keys aren't
      mutually comparable.
 */
- (GSONLinkedHashTreeMap_Node *)findWithId:(id)key
                               withBoolean:(jboolean)create;

/*!
 @brief Returns this map's entry that has the same key and value as <code>entry</code>
 , or null if this map has no such entry.
 <p>This method uses the comparator for key equality rather than <code>equals</code>
 . If this map's comparator isn't consistent with equals (such as 
 <code>String.CASE_INSENSITIVE_ORDER</code>), then <code>remove()</code> and <code>contains()</code>
  will violate the collections API.
 */
- (GSONLinkedHashTreeMap_Node *)findByEntryWithJavaUtilMap_Entry:(id<JavaUtilMap_Entry>)entry_;

- (GSONLinkedHashTreeMap_Node *)findByObjectWithId:(id)key;

/*!
 @brief Removes <code>node</code> from this tree, rearranging the tree's structure as
  necessary.
 @param unlink true to also unlink this node from the iteration linked list.
 */
- (void)removeInternalWithGSONLinkedHashTreeMap_Node:(GSONLinkedHashTreeMap_Node *)node
                                         withBoolean:(jboolean)unlink;

- (GSONLinkedHashTreeMap_Node *)removeInternalByKeyWithId:(id)key;

@end

J2OBJC_STATIC_INIT(GSONLinkedHashTreeMap)

J2OBJC_FIELD_SETTER(GSONLinkedHashTreeMap, comparator_, id<JavaUtilComparator>)
J2OBJC_FIELD_SETTER(GSONLinkedHashTreeMap, table_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(GSONLinkedHashTreeMap, header_, GSONLinkedHashTreeMap_Node *)

FOUNDATION_EXPORT void GSONLinkedHashTreeMap_init(GSONLinkedHashTreeMap *self);

FOUNDATION_EXPORT GSONLinkedHashTreeMap *new_GSONLinkedHashTreeMap_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedHashTreeMap *create_GSONLinkedHashTreeMap_init();

FOUNDATION_EXPORT void GSONLinkedHashTreeMap_initWithJavaUtilComparator_(GSONLinkedHashTreeMap *self, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT GSONLinkedHashTreeMap *new_GSONLinkedHashTreeMap_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedHashTreeMap *create_GSONLinkedHashTreeMap_initWithJavaUtilComparator_(id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT IOSObjectArray *GSONLinkedHashTreeMap_doubleCapacityWithGSONLinkedHashTreeMap_NodeArray_(IOSObjectArray *oldTable);

J2OBJC_TYPE_LITERAL_HEADER(GSONLinkedHashTreeMap)

@compatibility_alias ComGoogleGsonInternalLinkedHashTreeMap GSONLinkedHashTreeMap;

#endif

#if !defined (GSONLinkedHashTreeMap_Node_) && (INCLUDE_ALL_LinkedHashTreeMap || defined(INCLUDE_GSONLinkedHashTreeMap_Node))
#define GSONLinkedHashTreeMap_Node_

#define RESTRICT_JavaUtilMap 1
#define INCLUDE_JavaUtilMap_Entry 1
#include "java/util/Map.h"

@interface GSONLinkedHashTreeMap_Node : NSObject < JavaUtilMap_Entry > {
 @public
  GSONLinkedHashTreeMap_Node *parent_;
  GSONLinkedHashTreeMap_Node *left_;
  GSONLinkedHashTreeMap_Node *right_;
  GSONLinkedHashTreeMap_Node *next_;
  GSONLinkedHashTreeMap_Node *prev_;
  id key_;
  jint hash__;
  id value_;
  jint height_;
}

#pragma mark Public

- (jboolean)isEqual:(id)o;

/*!
 @brief Returns the first node in this subtree.
 */
- (GSONLinkedHashTreeMap_Node *)first;

- (id)getKey;

- (id)getValue;

- (NSUInteger)hash;

/*!
 @brief Returns the last node in this subtree.
 */
- (GSONLinkedHashTreeMap_Node *)last;

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
- (instancetype)initWithGSONLinkedHashTreeMap_Node:(GSONLinkedHashTreeMap_Node *)parent
                                            withId:(id)key
                                           withInt:(jint)hash_
                    withGSONLinkedHashTreeMap_Node:(GSONLinkedHashTreeMap_Node *)next
                    withGSONLinkedHashTreeMap_Node:(GSONLinkedHashTreeMap_Node *)prev;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONLinkedHashTreeMap_Node)

J2OBJC_FIELD_SETTER(GSONLinkedHashTreeMap_Node, parent_, GSONLinkedHashTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedHashTreeMap_Node, left_, GSONLinkedHashTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedHashTreeMap_Node, right_, GSONLinkedHashTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedHashTreeMap_Node, next_, GSONLinkedHashTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedHashTreeMap_Node, prev_, GSONLinkedHashTreeMap_Node *)
J2OBJC_FIELD_SETTER(GSONLinkedHashTreeMap_Node, key_, id)
J2OBJC_FIELD_SETTER(GSONLinkedHashTreeMap_Node, value_, id)

FOUNDATION_EXPORT void GSONLinkedHashTreeMap_Node_init(GSONLinkedHashTreeMap_Node *self);

FOUNDATION_EXPORT GSONLinkedHashTreeMap_Node *new_GSONLinkedHashTreeMap_Node_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedHashTreeMap_Node *create_GSONLinkedHashTreeMap_Node_init();

FOUNDATION_EXPORT void GSONLinkedHashTreeMap_Node_initWithGSONLinkedHashTreeMap_Node_withId_withInt_withGSONLinkedHashTreeMap_Node_withGSONLinkedHashTreeMap_Node_(GSONLinkedHashTreeMap_Node *self, GSONLinkedHashTreeMap_Node *parent, id key, jint hash_, GSONLinkedHashTreeMap_Node *next, GSONLinkedHashTreeMap_Node *prev);

FOUNDATION_EXPORT GSONLinkedHashTreeMap_Node *new_GSONLinkedHashTreeMap_Node_initWithGSONLinkedHashTreeMap_Node_withId_withInt_withGSONLinkedHashTreeMap_Node_withGSONLinkedHashTreeMap_Node_(GSONLinkedHashTreeMap_Node *parent, id key, jint hash_, GSONLinkedHashTreeMap_Node *next, GSONLinkedHashTreeMap_Node *prev) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedHashTreeMap_Node *create_GSONLinkedHashTreeMap_Node_initWithGSONLinkedHashTreeMap_Node_withId_withInt_withGSONLinkedHashTreeMap_Node_withGSONLinkedHashTreeMap_Node_(GSONLinkedHashTreeMap_Node *parent, id key, jint hash_, GSONLinkedHashTreeMap_Node *next, GSONLinkedHashTreeMap_Node *prev);

J2OBJC_TYPE_LITERAL_HEADER(GSONLinkedHashTreeMap_Node)

#endif

#if !defined (GSONLinkedHashTreeMap_AvlIterator_) && (INCLUDE_ALL_LinkedHashTreeMap || defined(INCLUDE_GSONLinkedHashTreeMap_AvlIterator))
#define GSONLinkedHashTreeMap_AvlIterator_

@class GSONLinkedHashTreeMap_Node;

/*!
 @brief Walks an AVL tree in iteration order.Once a node has been returned, its
  left, right and parent links are <strong>no longer used</strong>.
 For this
  reason it is safe to transform these links as you walk a tree. 
 <p><strong>Warning:</strong> this iterator is destructive. It clears the
  parent node of all nodes in the tree. It is an error to make a partial
  iteration of a tree.
 */
@interface GSONLinkedHashTreeMap_AvlIterator : NSObject

#pragma mark Public

- (GSONLinkedHashTreeMap_Node *)next;

#pragma mark Package-Private

- (instancetype)init;

- (void)resetWithGSONLinkedHashTreeMap_Node:(GSONLinkedHashTreeMap_Node *)root;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONLinkedHashTreeMap_AvlIterator)

FOUNDATION_EXPORT void GSONLinkedHashTreeMap_AvlIterator_init(GSONLinkedHashTreeMap_AvlIterator *self);

FOUNDATION_EXPORT GSONLinkedHashTreeMap_AvlIterator *new_GSONLinkedHashTreeMap_AvlIterator_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedHashTreeMap_AvlIterator *create_GSONLinkedHashTreeMap_AvlIterator_init();

J2OBJC_TYPE_LITERAL_HEADER(GSONLinkedHashTreeMap_AvlIterator)

#endif

#if !defined (GSONLinkedHashTreeMap_AvlBuilder_) && (INCLUDE_ALL_LinkedHashTreeMap || defined(INCLUDE_GSONLinkedHashTreeMap_AvlBuilder))
#define GSONLinkedHashTreeMap_AvlBuilder_

@class GSONLinkedHashTreeMap_Node;

/*!
 @brief Builds AVL trees of a predetermined size by accepting nodes of increasing
  value.To use: 
 <ol>
    <li>Call <code>reset</code> to initialize the target size <i>size</i>.
 <li>Call <code>add</code> <i>size</i> times with increasing values.
    <li>Call <code>root</code> to get the root of the balanced tree. 
 </ol>
  
 <p>The returned tree will satisfy the AVL constraint: for every node 
 <i>N</i>, the height of <i>N.left</i> and <i>N.right</i> is different by at
  most 1. It accomplishes this by omitting deepest-level leaf nodes when
  building trees whose size isn't a power of 2 minus 1. 
 <p>Unlike rebuilding a tree from scratch, this approach requires no value
  comparisons. Using this class to create a tree of size <i>S</i> is 
 <code>O(S)</code>.
 */
@interface GSONLinkedHashTreeMap_AvlBuilder : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (void)addWithGSONLinkedHashTreeMap_Node:(GSONLinkedHashTreeMap_Node *)node;

- (void)resetWithInt:(jint)targetSize;

- (GSONLinkedHashTreeMap_Node *)root;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONLinkedHashTreeMap_AvlBuilder)

FOUNDATION_EXPORT void GSONLinkedHashTreeMap_AvlBuilder_init(GSONLinkedHashTreeMap_AvlBuilder *self);

FOUNDATION_EXPORT GSONLinkedHashTreeMap_AvlBuilder *new_GSONLinkedHashTreeMap_AvlBuilder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedHashTreeMap_AvlBuilder *create_GSONLinkedHashTreeMap_AvlBuilder_init();

J2OBJC_TYPE_LITERAL_HEADER(GSONLinkedHashTreeMap_AvlBuilder)

#endif

#if !defined (GSONLinkedHashTreeMap_EntrySet_) && (INCLUDE_ALL_LinkedHashTreeMap || defined(INCLUDE_GSONLinkedHashTreeMap_EntrySet))
#define GSONLinkedHashTreeMap_EntrySet_

#define RESTRICT_JavaUtilAbstractSet 1
#define INCLUDE_JavaUtilAbstractSet 1
#include "java/util/AbstractSet.h"

@class GSONLinkedHashTreeMap;
@protocol JavaUtilIterator;

@interface GSONLinkedHashTreeMap_EntrySet : JavaUtilAbstractSet

#pragma mark Public

- (void)clear;

- (jboolean)containsWithId:(id)o;

- (id<JavaUtilIterator>)iterator;

- (jboolean)removeWithId:(id)o;

- (jint)size;

#pragma mark Package-Private

- (instancetype)initWithGSONLinkedHashTreeMap:(GSONLinkedHashTreeMap *)outer$;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONLinkedHashTreeMap_EntrySet)

FOUNDATION_EXPORT void GSONLinkedHashTreeMap_EntrySet_initWithGSONLinkedHashTreeMap_(GSONLinkedHashTreeMap_EntrySet *self, GSONLinkedHashTreeMap *outer$);

FOUNDATION_EXPORT GSONLinkedHashTreeMap_EntrySet *new_GSONLinkedHashTreeMap_EntrySet_initWithGSONLinkedHashTreeMap_(GSONLinkedHashTreeMap *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedHashTreeMap_EntrySet *create_GSONLinkedHashTreeMap_EntrySet_initWithGSONLinkedHashTreeMap_(GSONLinkedHashTreeMap *outer$);

J2OBJC_TYPE_LITERAL_HEADER(GSONLinkedHashTreeMap_EntrySet)

#endif

#if !defined (GSONLinkedHashTreeMap_KeySet_) && (INCLUDE_ALL_LinkedHashTreeMap || defined(INCLUDE_GSONLinkedHashTreeMap_KeySet))
#define GSONLinkedHashTreeMap_KeySet_

#define RESTRICT_JavaUtilAbstractSet 1
#define INCLUDE_JavaUtilAbstractSet 1
#include "java/util/AbstractSet.h"

@class GSONLinkedHashTreeMap;
@protocol JavaUtilIterator;

@interface GSONLinkedHashTreeMap_KeySet : JavaUtilAbstractSet

#pragma mark Public

- (void)clear;

- (jboolean)containsWithId:(id)o;

- (id<JavaUtilIterator>)iterator;

- (jboolean)removeWithId:(id)key;

- (jint)size;

#pragma mark Package-Private

- (instancetype)initWithGSONLinkedHashTreeMap:(GSONLinkedHashTreeMap *)outer$;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GSONLinkedHashTreeMap_KeySet)

FOUNDATION_EXPORT void GSONLinkedHashTreeMap_KeySet_initWithGSONLinkedHashTreeMap_(GSONLinkedHashTreeMap_KeySet *self, GSONLinkedHashTreeMap *outer$);

FOUNDATION_EXPORT GSONLinkedHashTreeMap_KeySet *new_GSONLinkedHashTreeMap_KeySet_initWithGSONLinkedHashTreeMap_(GSONLinkedHashTreeMap *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GSONLinkedHashTreeMap_KeySet *create_GSONLinkedHashTreeMap_KeySet_initWithGSONLinkedHashTreeMap_(GSONLinkedHashTreeMap *outer$);

J2OBJC_TYPE_LITERAL_HEADER(GSONLinkedHashTreeMap_KeySet)

#endif

#pragma pop_macro("INCLUDE_ALL_LinkedHashTreeMap")