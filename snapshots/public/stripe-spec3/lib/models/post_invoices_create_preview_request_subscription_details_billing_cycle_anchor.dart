// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1.fromJson(String json) { return switch (json) {
  'now' => now,
  'unchanged' => unchanged,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1 now = PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1._('now');

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1 unchanged = PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1._('unchanged');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1> values = [now, unchanged];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchor {
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchor({this.postInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchor._({required this.rawValue, required this.postInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1,
required this.$int,});
  factory PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchor.fromJson(Object? json) => PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchor._(
    rawValue: Omittable(json),
    postInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1: parseAnyOfVariant<PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1>(json, (value) => PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1> postInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1.isPresent) postInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchorVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchor && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestSubscriptionDetailsBillingCycleAnchor(${toJson()})';
}
