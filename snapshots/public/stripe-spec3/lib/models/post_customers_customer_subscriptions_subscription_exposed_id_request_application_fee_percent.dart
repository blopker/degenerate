// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2($value)';}
}
/// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercent {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercent({this.$double = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercent._({required this.rawValue, required this.$double,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercent.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercent._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestApplicationFeePercent(${toJson()})';
}
