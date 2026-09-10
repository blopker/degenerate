// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param7.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholds {
  const PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholds({this.billingThresholdsParam7 = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholds._({required this.rawValue, required this.billingThresholdsParam7,
required this.postSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholds.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholds._(
    rawValue: Omittable(json),
    billingThresholdsParam7: parseAnyOfVariant<BillingThresholdsParam7>(json, (value) => BillingThresholdsParam7.fromJson(value! as Map<String, dynamic>)),
postSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingThresholdsParam7> billingThresholdsParam7;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2> postSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingThresholdsParam7.isPresent || postSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingThresholdsParam7.isPresent) billingThresholdsParam7.value?.toJson(),
if (postSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesBillingThresholds(${toJson()})';
}
