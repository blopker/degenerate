// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2.fromJson(String json) {return switch (json) {
  'now' => now,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2 now = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2._('now');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2> values = [now];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEnd {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEnd({this.$int = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEnd._({required this.rawValue, required this.$int,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEnd.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEnd._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEndVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEnd && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesTrialEnd(${toJson()})';
}
