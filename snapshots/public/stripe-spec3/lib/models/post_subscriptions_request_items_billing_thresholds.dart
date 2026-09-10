// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param9.dart';@immutable final class PostSubscriptionsRequestItemsBillingThresholdsVariant2 {const PostSubscriptionsRequestItemsBillingThresholdsVariant2._(this.value);

factory PostSubscriptionsRequestItemsBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestItemsBillingThresholdsVariant2._(json),
}; }

static const PostSubscriptionsRequestItemsBillingThresholdsVariant2 $empty = PostSubscriptionsRequestItemsBillingThresholdsVariant2._('');

static const List<PostSubscriptionsRequestItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestItemsBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestItemsBillingThresholdsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsRequestItemsBillingThresholds {
  const PostSubscriptionsRequestItemsBillingThresholds({this.itemBillingThresholdsParam9 = const Omittable.absent(),
this.postSubscriptionsRequestItemsBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestItemsBillingThresholds._({required this.rawValue, required this.itemBillingThresholdsParam9,
required this.postSubscriptionsRequestItemsBillingThresholdsVariant2,});
  factory PostSubscriptionsRequestItemsBillingThresholds.fromJson(Object? json) => PostSubscriptionsRequestItemsBillingThresholds._(
    rawValue: Omittable(json),
    itemBillingThresholdsParam9: parseAnyOfVariant<ItemBillingThresholdsParam9>(json, (value) => ItemBillingThresholdsParam9.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestItemsBillingThresholdsVariant2: parseAnyOfVariant<PostSubscriptionsRequestItemsBillingThresholdsVariant2>(json, (value) => PostSubscriptionsRequestItemsBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ItemBillingThresholdsParam9> itemBillingThresholdsParam9;
final Omittable<PostSubscriptionsRequestItemsBillingThresholdsVariant2> postSubscriptionsRequestItemsBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => itemBillingThresholdsParam9.isPresent || postSubscriptionsRequestItemsBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (itemBillingThresholdsParam9.isPresent) itemBillingThresholdsParam9.value?.toJson(),
if (postSubscriptionsRequestItemsBillingThresholdsVariant2.isPresent) postSubscriptionsRequestItemsBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestItemsBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestItemsBillingThresholds(${toJson()})';
}
