// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param8.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholds {
  const PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholds({this.itemBillingThresholdsParam8 = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholds._({required this.rawValue, required this.itemBillingThresholdsParam8,
required this.postSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholds.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholds._(
    rawValue: Omittable(json),
    itemBillingThresholdsParam8: parseAnyOfVariant<ItemBillingThresholdsParam8>(json, (value) => ItemBillingThresholdsParam8.fromJson(value! as Map<String, dynamic>)),
postSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ItemBillingThresholdsParam8> itemBillingThresholdsParam8;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2> postSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => itemBillingThresholdsParam8.isPresent || postSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (itemBillingThresholdsParam8.isPresent) itemBillingThresholdsParam8.value?.toJson(),
if (postSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesItemsBillingThresholds(${toJson()})';
}
