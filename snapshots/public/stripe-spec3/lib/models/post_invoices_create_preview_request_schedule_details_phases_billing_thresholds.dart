// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_thresholds_param3.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholds {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholds({this.billingThresholdsParam3 = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholds._({required this.rawValue, required this.billingThresholdsParam3,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholds.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholds._(
    rawValue: Omittable(json),
    billingThresholdsParam3: parseAnyOfVariant<BillingThresholdsParam3>(json, (value) => BillingThresholdsParam3.fromJson(value! as Map<String, dynamic>)),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingThresholdsParam3> billingThresholdsParam3;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingThresholdsParam3.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingThresholdsParam3.isPresent) billingThresholdsParam3.value?.toJson(),
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesBillingThresholds(${toJson()})';
}
