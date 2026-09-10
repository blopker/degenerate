// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_schedule_request_phases_items_discounts_variant1.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2._(json),
};}

static const PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscounts {
  const PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscounts({this.listPostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1 = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscounts._({required this.rawValue, required this.listPostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1,
required this.postSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscounts.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscounts._(
    rawValue: Omittable(json),
    listPostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1: parseAnyOfVariant<List<PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1>> listPostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2> postSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1.isPresent || postSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1.isPresent) listPostSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesItemsDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesItemsDiscounts(${toJson()})';
}
