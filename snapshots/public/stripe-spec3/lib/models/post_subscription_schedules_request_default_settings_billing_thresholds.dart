// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param4.dart';@immutable final class PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2 {const PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2._(this.value);

factory PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2 $empty = PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2._('');

static const List<PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholds {
  const PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholds({this.billingThresholdsParam4 = const Omittable.absent(),
this.postSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholds._({required this.rawValue, required this.billingThresholdsParam4,
required this.postSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2,});
  factory PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholds.fromJson(Object? json) => PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholds._(
    rawValue: Omittable(json),
    billingThresholdsParam4: parseAnyOfVariant<BillingThresholdsParam4>(json, (value) => BillingThresholdsParam4.fromJson(value! as Map<String, dynamic>)),
postSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2>(json, (value) => PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingThresholdsParam4> billingThresholdsParam4;
final Omittable<PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2> postSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingThresholdsParam4.isPresent || postSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingThresholdsParam4.isPresent) billingThresholdsParam4.value?.toJson(),
if (postSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2.isPresent) postSubscriptionSchedulesRequestDefaultSettingsBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestDefaultSettingsBillingThresholds(${toJson()})';
}
