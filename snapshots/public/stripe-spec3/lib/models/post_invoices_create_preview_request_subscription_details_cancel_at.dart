// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2 $empty = PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2._('');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2($value)'; } 
 }
@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3.fromJson(String json) { return switch (json) {
  'max_period_end' => maxPeriodEnd,
  'min_period_end' => minPeriodEnd,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3 maxPeriodEnd = PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3._('max_period_end');

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3 minPeriodEnd = PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3._('min_period_end');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3> values = [maxPeriodEnd, minPeriodEnd];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAt {
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAt({this.$int = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2 = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAt._({required this.rawValue, required this.$int,
required this.postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2,
required this.postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3,});
  factory PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAt.fromJson(Object? json) => PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2>(json, (value) => PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2.fromJson(value! as String)),
postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3: parseAnyOfVariant<PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3>(json, (value) => PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2> postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2;
final Omittable<PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3> postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2.isPresent || postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2.isPresent) postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant2.value?.toJson(),
if (postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3.isPresent) postInvoicesCreatePreviewRequestSubscriptionDetailsCancelAtVariant3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestSubscriptionDetailsCancelAt(${toJson()})';
}
