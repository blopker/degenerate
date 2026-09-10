// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_items_request_discounts_variant1.dart';@immutable final class PostSubscriptionItemsRequestDiscountsVariant2 {const PostSubscriptionItemsRequestDiscountsVariant2._(this.value);

factory PostSubscriptionItemsRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionItemsRequestDiscountsVariant2._(json),
}; }

static const PostSubscriptionItemsRequestDiscountsVariant2 $empty = PostSubscriptionItemsRequestDiscountsVariant2._('');

static const List<PostSubscriptionItemsRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionItemsRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionItemsRequestDiscountsVariant2($value)'; } 
 }
/// The coupons to redeem into discounts for the subscription item.
@immutable
final class PostSubscriptionItemsRequestDiscounts {
  const PostSubscriptionItemsRequestDiscounts({this.listPostSubscriptionItemsRequestDiscountsVariant1 = const Omittable.absent(),
this.postSubscriptionItemsRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionItemsRequestDiscounts._({required this.rawValue, required this.listPostSubscriptionItemsRequestDiscountsVariant1,
required this.postSubscriptionItemsRequestDiscountsVariant2,});
  factory PostSubscriptionItemsRequestDiscounts.fromJson(Object? json) => PostSubscriptionItemsRequestDiscounts._(
    rawValue: Omittable(json),
    listPostSubscriptionItemsRequestDiscountsVariant1: parseAnyOfVariant<List<PostSubscriptionItemsRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSubscriptionItemsRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSubscriptionItemsRequestDiscountsVariant2: parseAnyOfVariant<PostSubscriptionItemsRequestDiscountsVariant2>(json, (value) => PostSubscriptionItemsRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSubscriptionItemsRequestDiscountsVariant1>> listPostSubscriptionItemsRequestDiscountsVariant1;
final Omittable<PostSubscriptionItemsRequestDiscountsVariant2> postSubscriptionItemsRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSubscriptionItemsRequestDiscountsVariant1.isPresent || postSubscriptionItemsRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSubscriptionItemsRequestDiscountsVariant1.isPresent) listPostSubscriptionItemsRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSubscriptionItemsRequestDiscountsVariant2.isPresent) postSubscriptionItemsRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionItemsRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionItemsRequestDiscounts(${toJson()})';
}
