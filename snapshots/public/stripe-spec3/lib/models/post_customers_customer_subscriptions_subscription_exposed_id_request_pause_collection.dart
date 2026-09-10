// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pause_collection_param.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2($value)'; } 
 }
/// If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://docs.stripe.com/billing/subscriptions/pause-payment).
@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollection {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollection({this.pauseCollectionParam = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollection._({required this.rawValue, required this.pauseCollectionParam,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollection.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollection._(
    rawValue: Omittable(json),
    pauseCollectionParam: parseAnyOfVariant<PauseCollectionParam>(json, (value) => PauseCollectionParam.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PauseCollectionParam> pauseCollectionParam;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => pauseCollectionParam.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (pauseCollectionParam.isPresent) pauseCollectionParam.value?.toJson(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollection && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPauseCollection(${toJson()})';
}
