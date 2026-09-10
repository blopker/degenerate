// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_pcaps_pcaps_response_full.dart';import 'magic_visibility_pcaps_pcaps_response_simple.dart';
@immutable
final class MagicVisibilityPcapsPcapsCollectionResponseResult {
  const MagicVisibilityPcapsPcapsCollectionResponseResult({this.magicVisibilityPcapsPcapsResponseSimple = const Omittable.absent(),
this.magicVisibilityPcapsPcapsResponseFull = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MagicVisibilityPcapsPcapsCollectionResponseResult._({required this.rawValue, required this.magicVisibilityPcapsPcapsResponseSimple,
required this.magicVisibilityPcapsPcapsResponseFull,});
  factory MagicVisibilityPcapsPcapsCollectionResponseResult.fromJson(Object? json) => MagicVisibilityPcapsPcapsCollectionResponseResult._(
    rawValue: Omittable(json),
    magicVisibilityPcapsPcapsResponseSimple: parseAnyOfVariant<MagicVisibilityPcapsPcapsResponseSimple>(json, (value) => MagicVisibilityPcapsPcapsResponseSimple.fromJson(value! as Map<String, dynamic>)),
magicVisibilityPcapsPcapsResponseFull: parseAnyOfVariant<MagicVisibilityPcapsPcapsResponseFull>(json, (value) => MagicVisibilityPcapsPcapsResponseFull.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<MagicVisibilityPcapsPcapsResponseSimple> magicVisibilityPcapsPcapsResponseSimple;
final Omittable<MagicVisibilityPcapsPcapsResponseFull> magicVisibilityPcapsPcapsResponseFull;

  /// Whether at least one known variant matched.
  bool get isValid => magicVisibilityPcapsPcapsResponseSimple.isPresent || magicVisibilityPcapsPcapsResponseFull.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (magicVisibilityPcapsPcapsResponseSimple.isPresent) magicVisibilityPcapsPcapsResponseSimple.value?.toJson(),
if (magicVisibilityPcapsPcapsResponseFull.isPresent) magicVisibilityPcapsPcapsResponseFull.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MagicVisibilityPcapsPcapsCollectionResponseResult && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MagicVisibilityPcapsPcapsCollectionResponseResult(${toJson()})';
}
