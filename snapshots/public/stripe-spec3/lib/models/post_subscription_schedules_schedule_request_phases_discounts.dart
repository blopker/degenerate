// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_schedule_request_phases_discounts_variant1.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesDiscounts {
  const PostSubscriptionSchedulesScheduleRequestPhasesDiscounts({this.listPostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1 = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesDiscounts._({required this.rawValue, required this.listPostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1,
required this.postSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesDiscounts.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesDiscounts._(
    rawValue: Omittable(json),
    listPostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1: parseAnyOfVariant<List<PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1>> listPostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2> postSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1.isPresent || postSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1.isPresent) listPostSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesDiscounts(${toJson()})';
}
