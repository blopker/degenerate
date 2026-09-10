// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestStartDateVariant2 {const PostSubscriptionSchedulesRequestStartDateVariant2._(this.value);

factory PostSubscriptionSchedulesRequestStartDateVariant2.fromJson(String json) {return switch (json) {
  'now' => now,
  _ => PostSubscriptionSchedulesRequestStartDateVariant2._(json),
};}

static const PostSubscriptionSchedulesRequestStartDateVariant2 now = PostSubscriptionSchedulesRequestStartDateVariant2._('now');

static const List<PostSubscriptionSchedulesRequestStartDateVariant2> values = [now];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestStartDateVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesRequestStartDateVariant2($value)';}
}
/// When the subscription schedule starts. We recommend using `now` so that it starts the subscription immediately. You can also use a Unix timestamp to backdate the subscription so that it starts on a past date, or set a future date for the subscription to start on.
@immutable
final class PostSubscriptionSchedulesRequestStartDate {
  const PostSubscriptionSchedulesRequestStartDate({this.$int = const Omittable.absent(),
this.postSubscriptionSchedulesRequestStartDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestStartDate._({required this.rawValue, required this.$int,
required this.postSubscriptionSchedulesRequestStartDateVariant2,});
  factory PostSubscriptionSchedulesRequestStartDate.fromJson(Object? json) => PostSubscriptionSchedulesRequestStartDate._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSubscriptionSchedulesRequestStartDateVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestStartDateVariant2>(json, (value) => PostSubscriptionSchedulesRequestStartDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSubscriptionSchedulesRequestStartDateVariant2> postSubscriptionSchedulesRequestStartDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSubscriptionSchedulesRequestStartDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSubscriptionSchedulesRequestStartDateVariant2.isPresent) postSubscriptionSchedulesRequestStartDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestStartDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestStartDate(${toJson()})';
}
