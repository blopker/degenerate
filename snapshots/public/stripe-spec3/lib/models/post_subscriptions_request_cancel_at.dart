// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsRequestCancelAtVariant2 {const PostSubscriptionsRequestCancelAtVariant2._(this.value);

factory PostSubscriptionsRequestCancelAtVariant2.fromJson(String json) {return switch (json) {
  'max_period_end' => maxPeriodEnd,
  'min_period_end' => minPeriodEnd,
  _ => PostSubscriptionsRequestCancelAtVariant2._(json),
};}

static const PostSubscriptionsRequestCancelAtVariant2 maxPeriodEnd = PostSubscriptionsRequestCancelAtVariant2._('max_period_end');

static const PostSubscriptionsRequestCancelAtVariant2 minPeriodEnd = PostSubscriptionsRequestCancelAtVariant2._('min_period_end');

static const List<PostSubscriptionsRequestCancelAtVariant2> values = [maxPeriodEnd, minPeriodEnd];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsRequestCancelAtVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsRequestCancelAtVariant2($value)';}
}
/// A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
@immutable
final class PostSubscriptionsRequestCancelAt {
  const PostSubscriptionsRequestCancelAt({this.$int = const Omittable.absent(),
this.postSubscriptionsRequestCancelAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestCancelAt._({required this.rawValue, required this.$int,
required this.postSubscriptionsRequestCancelAtVariant2,});
  factory PostSubscriptionsRequestCancelAt.fromJson(Object? json) => PostSubscriptionsRequestCancelAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSubscriptionsRequestCancelAtVariant2: parseAnyOfVariant<PostSubscriptionsRequestCancelAtVariant2>(json, (value) => PostSubscriptionsRequestCancelAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSubscriptionsRequestCancelAtVariant2> postSubscriptionsRequestCancelAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSubscriptionsRequestCancelAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSubscriptionsRequestCancelAtVariant2.isPresent) postSubscriptionsRequestCancelAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestCancelAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestCancelAt(${toJson()})';
}
