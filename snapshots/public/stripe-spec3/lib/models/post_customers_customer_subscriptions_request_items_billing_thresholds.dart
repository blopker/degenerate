// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2 {const PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2 $empty = PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsRequestItemsBillingThresholds {
  const PostCustomersCustomerSubscriptionsRequestItemsBillingThresholds({this.itemBillingThresholdsParam = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestItemsBillingThresholds._({required this.rawValue, required this.itemBillingThresholdsParam,
required this.postCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestItemsBillingThresholds.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestItemsBillingThresholds._(
    rawValue: Omittable(json),
    itemBillingThresholdsParam: parseAnyOfVariant<ItemBillingThresholdsParam>(json, (value) => ItemBillingThresholdsParam.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ItemBillingThresholdsParam> itemBillingThresholdsParam;
final Omittable<PostCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2> postCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => itemBillingThresholdsParam.isPresent || postCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (itemBillingThresholdsParam.isPresent) itemBillingThresholdsParam.value?.toJson(),
if (postCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2.isPresent) postCustomersCustomerSubscriptionsRequestItemsBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestItemsBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestItemsBillingThresholds(${toJson()})';
}
