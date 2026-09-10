// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_items_discounts_variant1.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2($value)'; } 
 }

@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscounts {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscounts({this.listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscounts._({required this.rawValue, required this.listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscounts.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscounts._(
    rawValue: Omittable(json),
    listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1: parseAnyOfVariant<List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1>> listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1.isPresent) listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsDiscounts(${toJson()})';
}
