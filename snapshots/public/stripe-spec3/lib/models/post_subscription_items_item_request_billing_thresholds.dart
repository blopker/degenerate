// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param6.dart';@immutable final class PostSubscriptionItemsItemRequestBillingThresholdsVariant2 {const PostSubscriptionItemsItemRequestBillingThresholdsVariant2._(this.value);

factory PostSubscriptionItemsItemRequestBillingThresholdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionItemsItemRequestBillingThresholdsVariant2._(json),
};}

static const PostSubscriptionItemsItemRequestBillingThresholdsVariant2 $empty = PostSubscriptionItemsItemRequestBillingThresholdsVariant2._('');

static const List<PostSubscriptionItemsItemRequestBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionItemsItemRequestBillingThresholdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionItemsItemRequestBillingThresholdsVariant2($value)';}
}
/// Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
@immutable
final class PostSubscriptionItemsItemRequestBillingThresholds {
  const PostSubscriptionItemsItemRequestBillingThresholds({this.itemBillingThresholdsParam6 = const Omittable.absent(),
this.postSubscriptionItemsItemRequestBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionItemsItemRequestBillingThresholds._({required this.rawValue, required this.itemBillingThresholdsParam6,
required this.postSubscriptionItemsItemRequestBillingThresholdsVariant2,});
  factory PostSubscriptionItemsItemRequestBillingThresholds.fromJson(Object? json) => PostSubscriptionItemsItemRequestBillingThresholds._(
    rawValue: Omittable(json),
    itemBillingThresholdsParam6: parseAnyOfVariant<ItemBillingThresholdsParam6>(json, (value) => ItemBillingThresholdsParam6.fromJson(value! as Map<String, dynamic>)),
postSubscriptionItemsItemRequestBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionItemsItemRequestBillingThresholdsVariant2>(json, (value) => PostSubscriptionItemsItemRequestBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ItemBillingThresholdsParam6> itemBillingThresholdsParam6;
final Omittable<PostSubscriptionItemsItemRequestBillingThresholdsVariant2> postSubscriptionItemsItemRequestBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => itemBillingThresholdsParam6.isPresent || postSubscriptionItemsItemRequestBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (itemBillingThresholdsParam6.isPresent) itemBillingThresholdsParam6.value?.toJson(),
if (postSubscriptionItemsItemRequestBillingThresholdsVariant2.isPresent) postSubscriptionItemsItemRequestBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionItemsItemRequestBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionItemsItemRequestBillingThresholds(${toJson()})';
}
