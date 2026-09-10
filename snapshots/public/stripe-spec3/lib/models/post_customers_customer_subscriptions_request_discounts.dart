// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_subscriptions_request_discounts_variant1.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestDiscountsVariant2 {const PostCustomersCustomerSubscriptionsRequestDiscountsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestDiscountsVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestDiscountsVariant2 $empty = PostCustomersCustomerSubscriptionsRequestDiscountsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestDiscountsVariant2($value)';}
}
/// The coupons to redeem into discounts for the subscription. If not specified or empty, inherits the discount from the subscription's customer.
@immutable
final class PostCustomersCustomerSubscriptionsRequestDiscounts {
  const PostCustomersCustomerSubscriptionsRequestDiscounts({this.listPostCustomersCustomerSubscriptionsRequestDiscountsVariant1 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestDiscounts._({required this.rawValue, required this.listPostCustomersCustomerSubscriptionsRequestDiscountsVariant1,
required this.postCustomersCustomerSubscriptionsRequestDiscountsVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestDiscounts.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestDiscounts._(
    rawValue: Omittable(json),
    listPostCustomersCustomerSubscriptionsRequestDiscountsVariant1: parseAnyOfVariant<List<PostCustomersCustomerSubscriptionsRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostCustomersCustomerSubscriptionsRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postCustomersCustomerSubscriptionsRequestDiscountsVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestDiscountsVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostCustomersCustomerSubscriptionsRequestDiscountsVariant1>> listPostCustomersCustomerSubscriptionsRequestDiscountsVariant1;
final Omittable<PostCustomersCustomerSubscriptionsRequestDiscountsVariant2> postCustomersCustomerSubscriptionsRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostCustomersCustomerSubscriptionsRequestDiscountsVariant1.isPresent || postCustomersCustomerSubscriptionsRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostCustomersCustomerSubscriptionsRequestDiscountsVariant1.isPresent) listPostCustomersCustomerSubscriptionsRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postCustomersCustomerSubscriptionsRequestDiscountsVariant2.isPresent) postCustomersCustomerSubscriptionsRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestDiscounts(${toJson()})';
}
