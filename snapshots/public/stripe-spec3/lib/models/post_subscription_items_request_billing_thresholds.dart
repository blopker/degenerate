// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param5.dart';@immutable final class PostSubscriptionItemsRequestBillingThresholdsVariant2 {const PostSubscriptionItemsRequestBillingThresholdsVariant2._(this.value);

factory PostSubscriptionItemsRequestBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionItemsRequestBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionItemsRequestBillingThresholdsVariant2 $empty = PostSubscriptionItemsRequestBillingThresholdsVariant2._('');

static const List<PostSubscriptionItemsRequestBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionItemsRequestBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionItemsRequestBillingThresholdsVariant2($value)'; } 
 }
/// Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
@immutable
final class PostSubscriptionItemsRequestBillingThresholds {
  const PostSubscriptionItemsRequestBillingThresholds({this.itemBillingThresholdsParam5 = const Omittable.absent(),
this.postSubscriptionItemsRequestBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionItemsRequestBillingThresholds._({required this.rawValue, required this.itemBillingThresholdsParam5,
required this.postSubscriptionItemsRequestBillingThresholdsVariant2,});
  factory PostSubscriptionItemsRequestBillingThresholds.fromJson(Object? json) => PostSubscriptionItemsRequestBillingThresholds._(
    rawValue: Omittable(json),
    itemBillingThresholdsParam5: parseAnyOfVariant<ItemBillingThresholdsParam5>(json, (value) => ItemBillingThresholdsParam5.fromJson(value! as Map<String, dynamic>)),
postSubscriptionItemsRequestBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionItemsRequestBillingThresholdsVariant2>(json, (value) => PostSubscriptionItemsRequestBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ItemBillingThresholdsParam5> itemBillingThresholdsParam5;
final Omittable<PostSubscriptionItemsRequestBillingThresholdsVariant2> postSubscriptionItemsRequestBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => itemBillingThresholdsParam5.isPresent || postSubscriptionItemsRequestBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (itemBillingThresholdsParam5.isPresent) itemBillingThresholdsParam5.value?.toJson(),
if (postSubscriptionItemsRequestBillingThresholdsVariant2.isPresent) postSubscriptionItemsRequestBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionItemsRequestBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionItemsRequestBillingThresholds(${toJson()})';
}
