// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2.fromJson(String json) {return switch (json) {
  'now' => now,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2._(json),
};}

static const PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2 now = PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2._('now');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2> values = [now];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesEndDate {
  const PostSubscriptionSchedulesScheduleRequestPhasesEndDate({this.$int = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesEndDate._({required this.rawValue, required this.$int,
required this.postSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesEndDate.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesEndDate._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2> postSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesEndDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesEndDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesEndDate(${toJson()})';
}
