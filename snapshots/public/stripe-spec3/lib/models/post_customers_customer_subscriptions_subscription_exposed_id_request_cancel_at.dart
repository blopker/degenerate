// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2($value)';}
}
@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.fromJson(String json) {return switch (json) {
  'max_period_end' => maxPeriodEnd,
  'min_period_end' => minPeriodEnd,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 maxPeriodEnd = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._('max_period_end');

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 minPeriodEnd = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3._('min_period_end');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3> values = [maxPeriodEnd, minPeriodEnd];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3($value)';}
}
/// A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAt {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAt({this.$int = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAt._({required this.rawValue, required this.$int,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAt.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.fromJson(value! as String)),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant2.value?.toJson(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAtVariant3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestCancelAt(${toJson()})';
}
