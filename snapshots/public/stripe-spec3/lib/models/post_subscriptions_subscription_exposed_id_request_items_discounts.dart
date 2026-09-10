// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscriptions_subscription_exposed_id_request_items_discounts_variant1.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestItemsDiscounts {
  const PostSubscriptionsSubscriptionExposedIdRequestItemsDiscounts({this.listPostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestItemsDiscounts._({required this.rawValue, required this.listPostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1,
required this.postSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestItemsDiscounts.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestItemsDiscounts._(
    rawValue: Omittable(json),
    listPostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1: parseAnyOfVariant<List<PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1>> listPostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2> postSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1.isPresent || postSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1.isPresent) listPostSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestItemsDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestItemsDiscounts(${toJson()})';
}
