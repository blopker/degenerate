// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2._(json),
};}

static const PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2($value)';}
}
@immutable final class PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 {const PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.fromJson(String json) {return switch (json) {
  'max_period_end' => maxPeriodEnd,
  'min_period_end' => minPeriodEnd,
  _ => PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._(json),
};}

static const PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 maxPeriodEnd = PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._('max_period_end');

static const PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 minPeriodEnd = PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._('min_period_end');

static const List<PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3> values = [maxPeriodEnd, minPeriodEnd];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3($value)';}
}
/// A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestCancelAt {
  const PostSubscriptionsSubscriptionExposedIdRequestCancelAt({this.$int = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestCancelAt._({required this.rawValue, required this.$int,
required this.postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2,
required this.postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3,});
  factory PostSubscriptionsSubscriptionExposedIdRequestCancelAt.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestCancelAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.fromJson(value! as String)),
postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2> postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3> postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.isPresent || postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.isPresent) postSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestCancelAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestCancelAt(${toJson()})';
}
