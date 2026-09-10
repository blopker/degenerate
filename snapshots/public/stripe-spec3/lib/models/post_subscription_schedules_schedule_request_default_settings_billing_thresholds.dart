// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param6.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2 {const PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2 $empty = PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholds {
  const PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholds({this.billingThresholdsParam6 = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholds._({required this.rawValue, required this.billingThresholdsParam6,
required this.postSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholds.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholds._(
    rawValue: Omittable(json),
    billingThresholdsParam6: parseAnyOfVariant<BillingThresholdsParam6>(json, (value) => BillingThresholdsParam6.fromJson(value! as Map<String, dynamic>)),
postSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingThresholdsParam6> billingThresholdsParam6;
final Omittable<PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2> postSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingThresholdsParam6.isPresent || postSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingThresholdsParam6.isPresent) billingThresholdsParam6.value?.toJson(),
if (postSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2.isPresent) postSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsBillingThresholds(${toJson()})';
}
