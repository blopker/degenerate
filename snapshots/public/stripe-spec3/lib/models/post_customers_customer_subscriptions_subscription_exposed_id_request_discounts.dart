// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_discounts_variant1.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2($value)'; } 
 }
/// The coupons to redeem into discounts for the subscription. If not specified or empty, inherits the discount from the subscription's customer.
@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscounts {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscounts({this.listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscounts._({required this.rawValue, required this.listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscounts.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscounts._(
    rawValue: Omittable(json),
    listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1: parseAnyOfVariant<List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1>> listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1.isPresent) listPostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDiscounts(${toJson()})';
}
