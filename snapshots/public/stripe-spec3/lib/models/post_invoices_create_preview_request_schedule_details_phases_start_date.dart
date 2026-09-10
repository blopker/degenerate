// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2 now = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2._('now');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDate {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDate({this.$int = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDate._({required this.rawValue, required this.$int,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDate.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDate._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesStartDate(${toJson()})';
}
