// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2.fromJson(String json) {return switch (json) {
  'now' => now,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2._(json),
};}

static const PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2 now = PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2._('now');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2> values = [now];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesTrialEnd {
  const PostSubscriptionSchedulesScheduleRequestPhasesTrialEnd({this.$int = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesTrialEnd._({required this.rawValue, required this.$int,
required this.postSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesTrialEnd.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesTrialEnd._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2> postSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesTrialEndVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesTrialEnd && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesTrialEnd(${toJson()})';
}
