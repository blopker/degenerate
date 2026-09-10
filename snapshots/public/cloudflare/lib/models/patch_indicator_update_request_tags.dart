// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_indicator_update_request_tags_variant2.dart';
@immutable
final class PatchIndicatorUpdateRequestTags {
  const PatchIndicatorUpdateRequestTags({this.string = const Omittable.absent(),
this.patchIndicatorUpdateRequestTagsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PatchIndicatorUpdateRequestTags._({required this.rawValue, required this.string,
required this.patchIndicatorUpdateRequestTagsVariant2,});
  factory PatchIndicatorUpdateRequestTags.fromJson(Object? json) => PatchIndicatorUpdateRequestTags._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
patchIndicatorUpdateRequestTagsVariant2: parseAnyOfVariant<PatchIndicatorUpdateRequestTagsVariant2>(json, (value) => PatchIndicatorUpdateRequestTagsVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PatchIndicatorUpdateRequestTagsVariant2> patchIndicatorUpdateRequestTagsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || patchIndicatorUpdateRequestTagsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (patchIndicatorUpdateRequestTagsVariant2.isPresent) patchIndicatorUpdateRequestTagsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PatchIndicatorUpdateRequestTags && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PatchIndicatorUpdateRequestTags(${toJson()})';
}
