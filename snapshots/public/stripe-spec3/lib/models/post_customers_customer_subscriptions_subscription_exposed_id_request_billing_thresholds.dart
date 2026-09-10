// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param2.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2($value)'; } 
 }
/// Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholds {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholds({this.billingThresholdsParam2 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholds._({required this.rawValue, required this.billingThresholdsParam2,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholds.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholds._(
    rawValue: Omittable(json),
    billingThresholdsParam2: parseAnyOfVariant<BillingThresholdsParam2>(json, (value) => BillingThresholdsParam2.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingThresholdsParam2> billingThresholdsParam2;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingThresholdsParam2.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingThresholdsParam2.isPresent) billingThresholdsParam2.value?.toJson(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestBillingThresholds(${toJson()})';
}
