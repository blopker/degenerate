// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pause_collection_param2.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2($value)'; } 
 }
/// If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://docs.stripe.com/billing/subscriptions/pause-payment).
@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestPauseCollection {
  const PostSubscriptionsSubscriptionExposedIdRequestPauseCollection({this.pauseCollectionParam2 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestPauseCollection._({required this.rawValue, required this.pauseCollectionParam2,
required this.postSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestPauseCollection.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestPauseCollection._(
    rawValue: Omittable(json),
    pauseCollectionParam2: parseAnyOfVariant<PauseCollectionParam2>(json, (value) => PauseCollectionParam2.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PauseCollectionParam2> pauseCollectionParam2;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2> postSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => pauseCollectionParam2.isPresent || postSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (pauseCollectionParam2.isPresent) pauseCollectionParam2.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestPauseCollectionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestPauseCollection && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestPauseCollection(${toJson()})';
}
