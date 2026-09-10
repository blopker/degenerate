// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescription {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescription({this.string = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescription._({required this.rawValue, required this.string,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescription.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDescription(${toJson()})';
}
