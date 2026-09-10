// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param9.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2($value)'; } 
 }
/// Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestBillingThresholds {
  const PostSubscriptionsSubscriptionExposedIdRequestBillingThresholds({this.billingThresholdsParam9 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestBillingThresholds._({required this.rawValue, required this.billingThresholdsParam9,
required this.postSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestBillingThresholds.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestBillingThresholds._(
    rawValue: Omittable(json),
    billingThresholdsParam9: parseAnyOfVariant<BillingThresholdsParam9>(json, (value) => BillingThresholdsParam9.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingThresholdsParam9> billingThresholdsParam9;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2> postSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingThresholdsParam9.isPresent || postSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingThresholdsParam9.isPresent) billingThresholdsParam9.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestBillingThresholds(${toJson()})';
}
