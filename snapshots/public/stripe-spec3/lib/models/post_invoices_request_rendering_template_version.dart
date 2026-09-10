// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesRequestRenderingTemplateVersionVariant2 {const PostInvoicesRequestRenderingTemplateVersionVariant2._(this.value);

factory PostInvoicesRequestRenderingTemplateVersionVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestRenderingTemplateVersionVariant2._(json),
};}

static const PostInvoicesRequestRenderingTemplateVersionVariant2 $empty = PostInvoicesRequestRenderingTemplateVersionVariant2._('');

static const List<PostInvoicesRequestRenderingTemplateVersionVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesRequestRenderingTemplateVersionVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesRequestRenderingTemplateVersionVariant2($value)';}
}

@immutable
final class PostInvoicesRequestRenderingTemplateVersion {
  const PostInvoicesRequestRenderingTemplateVersion({this.$int = const Omittable.absent(),
this.postInvoicesRequestRenderingTemplateVersionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestRenderingTemplateVersion._({required this.rawValue, required this.$int,
required this.postInvoicesRequestRenderingTemplateVersionVariant2,});
  factory PostInvoicesRequestRenderingTemplateVersion.fromJson(Object? json) => PostInvoicesRequestRenderingTemplateVersion._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postInvoicesRequestRenderingTemplateVersionVariant2: parseAnyOfVariant<PostInvoicesRequestRenderingTemplateVersionVariant2>(json, (value) => PostInvoicesRequestRenderingTemplateVersionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostInvoicesRequestRenderingTemplateVersionVariant2> postInvoicesRequestRenderingTemplateVersionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postInvoicesRequestRenderingTemplateVersionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postInvoicesRequestRenderingTemplateVersionVariant2.isPresent) postInvoicesRequestRenderingTemplateVersionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestRenderingTemplateVersion && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestRenderingTemplateVersion(${toJson()})';
}
