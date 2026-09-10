// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.fromJson(String json) {return switch (json) {
  'now' => now,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 now = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1._('now');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1> values = [now];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1($value)';}
}
/// Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value `now` can be provided to end the customer's trial immediately. Can be at most two years from `billing_cycle_anchor`.
@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEnd {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEnd({this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEnd._({required this.rawValue, required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1,
required this.$int,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEnd.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEnd._(
    rawValue: Omittable(json),
    postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEndVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEnd && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestTrialEnd(${toJson()})';
}
