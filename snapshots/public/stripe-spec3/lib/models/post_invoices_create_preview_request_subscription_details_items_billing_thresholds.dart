// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param4.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2 $empty = PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholds {
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholds({this.itemBillingThresholdsParam4 = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholds._({required this.rawValue, required this.itemBillingThresholdsParam4,
required this.postInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2,});
  factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholds.fromJson(Object? json) => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholds._(
    rawValue: Omittable(json),
    itemBillingThresholdsParam4: parseAnyOfVariant<ItemBillingThresholdsParam4>(json, (value) => ItemBillingThresholdsParam4.fromJson(value! as Map<String, dynamic>)),
postInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2>(json, (value) => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ItemBillingThresholdsParam4> itemBillingThresholdsParam4;
final Omittable<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2> postInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => itemBillingThresholdsParam4.isPresent || postInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (itemBillingThresholdsParam4.isPresent) itemBillingThresholdsParam4.value?.toJson(),
if (postInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2.isPresent) postInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsBillingThresholds(${toJson()})';
}
