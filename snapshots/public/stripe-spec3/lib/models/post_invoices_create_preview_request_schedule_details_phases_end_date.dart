// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2.fromJson(String json) { return switch (json) {
  'now' => now,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2 now = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2._('now');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2> values = [now];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDate {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDate({this.$int = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDate._({required this.rawValue, required this.$int,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDate.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDate._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesEndDate(${toJson()})';
}
