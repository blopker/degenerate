// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_items_item_request_discounts_variant1.dart';@immutable final class PostSubscriptionItemsItemRequestDiscountsVariant2 {const PostSubscriptionItemsItemRequestDiscountsVariant2._(this.value);

factory PostSubscriptionItemsItemRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionItemsItemRequestDiscountsVariant2._(json),
}; }

static const PostSubscriptionItemsItemRequestDiscountsVariant2 $empty = PostSubscriptionItemsItemRequestDiscountsVariant2._('');

static const List<PostSubscriptionItemsItemRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionItemsItemRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionItemsItemRequestDiscountsVariant2($value)'; } 
 }
/// The coupons to redeem into discounts for the subscription item.
@immutable
final class PostSubscriptionItemsItemRequestDiscounts {
  const PostSubscriptionItemsItemRequestDiscounts({this.listPostSubscriptionItemsItemRequestDiscountsVariant1 = const Omittable.absent(),
this.postSubscriptionItemsItemRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionItemsItemRequestDiscounts._({required this.rawValue, required this.listPostSubscriptionItemsItemRequestDiscountsVariant1,
required this.postSubscriptionItemsItemRequestDiscountsVariant2,});
  factory PostSubscriptionItemsItemRequestDiscounts.fromJson(Object? json) => PostSubscriptionItemsItemRequestDiscounts._(
    rawValue: Omittable(json),
    listPostSubscriptionItemsItemRequestDiscountsVariant1: parseAnyOfVariant<List<PostSubscriptionItemsItemRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSubscriptionItemsItemRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSubscriptionItemsItemRequestDiscountsVariant2: parseAnyOfVariant<PostSubscriptionItemsItemRequestDiscountsVariant2>(json, (value) => PostSubscriptionItemsItemRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSubscriptionItemsItemRequestDiscountsVariant1>> listPostSubscriptionItemsItemRequestDiscountsVariant1;
final Omittable<PostSubscriptionItemsItemRequestDiscountsVariant2> postSubscriptionItemsItemRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSubscriptionItemsItemRequestDiscountsVariant1.isPresent || postSubscriptionItemsItemRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSubscriptionItemsItemRequestDiscountsVariant1.isPresent) listPostSubscriptionItemsItemRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSubscriptionItemsItemRequestDiscountsVariant2.isPresent) postSubscriptionItemsItemRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionItemsItemRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionItemsItemRequestDiscounts(${toJson()})';
}
