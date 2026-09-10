// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2.fromJson(String json) {return switch (json) {
  'now' => now,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2._(json),
};}

static const PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2 now = PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2._('now');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2> values = [now];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesStartDate {
  const PostSubscriptionSchedulesScheduleRequestPhasesStartDate({this.$int = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesStartDate._({required this.rawValue, required this.$int,
required this.postSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesStartDate.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesStartDate._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2> postSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesStartDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesStartDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesStartDate(${toJson()})';
}
