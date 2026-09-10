// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2 {const PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2 $empty = PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2($value)';}
}
/// Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
@immutable
final class PostCustomersCustomerSubscriptionsRequestBillingThresholds {
  const PostCustomersCustomerSubscriptionsRequestBillingThresholds({this.billingThresholdsParam = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestBillingThresholds._({required this.rawValue, required this.billingThresholdsParam,
required this.postCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestBillingThresholds.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestBillingThresholds._(
    rawValue: Omittable(json),
    billingThresholdsParam: parseAnyOfVariant<BillingThresholdsParam>(json, (value) => BillingThresholdsParam.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingThresholdsParam> billingThresholdsParam;
final Omittable<PostCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2> postCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingThresholdsParam.isPresent || postCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingThresholdsParam.isPresent) billingThresholdsParam.value?.toJson(),
if (postCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2.isPresent) postCustomersCustomerSubscriptionsRequestBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestBillingThresholds(${toJson()})';
}
