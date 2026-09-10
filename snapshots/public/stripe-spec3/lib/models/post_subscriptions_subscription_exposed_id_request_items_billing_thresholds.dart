// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param10.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds {
  const PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds({this.itemBillingThresholdsParam10 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds._({required this.rawValue, required this.itemBillingThresholdsParam10,
required this.postSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds._(
    rawValue: Omittable(json),
    itemBillingThresholdsParam10: parseAnyOfVariant<ItemBillingThresholdsParam10>(json, (value) => ItemBillingThresholdsParam10.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ItemBillingThresholdsParam10> itemBillingThresholdsParam10;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2> postSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => itemBillingThresholdsParam10.isPresent || postSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (itemBillingThresholdsParam10.isPresent) itemBillingThresholdsParam10.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds(${toJson()})';
}
