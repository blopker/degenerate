// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2 {const PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2 $empty = PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2($value)'; } 
 }
/// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
@immutable
final class PostCustomersCustomerSubscriptionsRequestApplicationFeePercent {
  const PostCustomersCustomerSubscriptionsRequestApplicationFeePercent({this.$double = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestApplicationFeePercent._({required this.rawValue, required this.$double,
required this.postCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestApplicationFeePercent.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestApplicationFeePercent._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2> postCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2.isPresent) postCustomersCustomerSubscriptionsRequestApplicationFeePercentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestApplicationFeePercent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestApplicationFeePercent(${toJson()})';
}
