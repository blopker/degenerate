// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Reference an input image by either URL or uploaded file ID.
/// Provide exactly one of `image_url` or `file_id`.
/// 
@immutable
final class ImageRefParam {
  const ImageRefParam({this.$dynamic = const Omittable.absent(),
this.$dynamic2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ImageRefParam._({required this.rawValue, required this.$dynamic,
required this.$dynamic2,});
  factory ImageRefParam.fromJson(Object? json) => ImageRefParam._(
    rawValue: Omittable(json),
    $dynamic: parseAnyOfVariant<dynamic>(json, (value) => value),
$dynamic2: parseAnyOfVariant<dynamic>(json, (value) => value),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<dynamic> $dynamic;
final Omittable<dynamic> $dynamic2;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || $dynamic.isPresent || $dynamic2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($dynamic.isPresent) $dynamic.value,
if ($dynamic2.isPresent) $dynamic2.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ImageRefParam && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ImageRefParam(${toJson()})';
}
