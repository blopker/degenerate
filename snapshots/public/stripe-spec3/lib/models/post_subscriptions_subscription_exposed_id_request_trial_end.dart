// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 {const PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 now = PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._('now');

static const List<PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1($value)'; } 
 }
/// Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, `trial_end` will override the default trial period of the plan the customer is being subscribed to. The `billing_cycle_anchor` will be updated to the `trial_end` value. The special value `now` can be provided to end the customer's trial immediately. Can be at most two years from `billing_cycle_anchor`.
@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestTrialEnd {
  const PostSubscriptionsSubscriptionExposedIdRequestTrialEnd({this.postSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestTrialEnd._({required this.rawValue, required this.postSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1,
required this.$int,});
  factory PostSubscriptionsSubscriptionExposedIdRequestTrialEnd.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestTrialEnd._(
    rawValue: Omittable(json),
    postSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1> postSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.isPresent) postSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestTrialEnd && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestTrialEnd(${toJson()})';
}
