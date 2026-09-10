// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param3.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholds {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholds({this.itemBillingThresholdsParam3 = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholds._({required this.rawValue, required this.itemBillingThresholdsParam3,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholds.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholds._(
    rawValue: Omittable(json),
    itemBillingThresholdsParam3: parseAnyOfVariant<ItemBillingThresholdsParam3>(json, (value) => ItemBillingThresholdsParam3.fromJson(value! as Map<String, dynamic>)),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ItemBillingThresholdsParam3> itemBillingThresholdsParam3;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => itemBillingThresholdsParam3.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (itemBillingThresholdsParam3.isPresent) itemBillingThresholdsParam3.value?.toJson(),
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsBillingThresholds(${toJson()})';
}
