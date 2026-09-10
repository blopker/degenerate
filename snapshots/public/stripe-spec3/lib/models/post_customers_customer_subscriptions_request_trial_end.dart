// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestTrialEndVariant1 {const PostCustomersCustomerSubscriptionsRequestTrialEndVariant1._(this.value);

factory PostCustomersCustomerSubscriptionsRequestTrialEndVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostCustomersCustomerSubscriptionsRequestTrialEndVariant1._(json),
}; }

static const PostCustomersCustomerSubscriptionsRequestTrialEndVariant1 now = PostCustomersCustomerSubscriptionsRequestTrialEndVariant1._('now');

static const List<PostCustomersCustomerSubscriptionsRequestTrialEndVariant1> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestTrialEndVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestTrialEndVariant1($value)'; } 
 }
/// Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value `now` can be provided to end the customer's trial immediately. Can be at most two years from `billing_cycle_anchor`. See [Using trial periods on subscriptions](https://docs.stripe.com/billing/subscriptions/trials) to learn more.
@immutable
final class PostCustomersCustomerSubscriptionsRequestTrialEnd {
  const PostCustomersCustomerSubscriptionsRequestTrialEnd({this.postCustomersCustomerSubscriptionsRequestTrialEndVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestTrialEnd._({required this.rawValue, required this.postCustomersCustomerSubscriptionsRequestTrialEndVariant1,
required this.$int,});
  factory PostCustomersCustomerSubscriptionsRequestTrialEnd.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestTrialEnd._(
    rawValue: Omittable(json),
    postCustomersCustomerSubscriptionsRequestTrialEndVariant1: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestTrialEndVariant1>(json, (value) => PostCustomersCustomerSubscriptionsRequestTrialEndVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostCustomersCustomerSubscriptionsRequestTrialEndVariant1> postCustomersCustomerSubscriptionsRequestTrialEndVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postCustomersCustomerSubscriptionsRequestTrialEndVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postCustomersCustomerSubscriptionsRequestTrialEndVariant1.isPresent) postCustomersCustomerSubscriptionsRequestTrialEndVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestTrialEnd && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestTrialEnd(${toJson()})';
}
