// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_pcaps_pcaps_request_full.dart';import 'magic_visibility_pcaps_pcaps_request_simple.dart';
@immutable
final class MagicVisibilityPcapsPcapsRequestPcap {
  const MagicVisibilityPcapsPcapsRequestPcap({this.magicVisibilityPcapsPcapsRequestSimple = const Omittable.absent(),
this.magicVisibilityPcapsPcapsRequestFull = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MagicVisibilityPcapsPcapsRequestPcap._({required this.rawValue, required this.magicVisibilityPcapsPcapsRequestSimple,
required this.magicVisibilityPcapsPcapsRequestFull,});
  factory MagicVisibilityPcapsPcapsRequestPcap.fromJson(Object? json) => MagicVisibilityPcapsPcapsRequestPcap._(
    rawValue: Omittable(json),
    magicVisibilityPcapsPcapsRequestSimple: parseAnyOfVariant<MagicVisibilityPcapsPcapsRequestSimple>(json, (value) => MagicVisibilityPcapsPcapsRequestSimple.fromJson(value! as Map<String, dynamic>)),
magicVisibilityPcapsPcapsRequestFull: parseAnyOfVariant<MagicVisibilityPcapsPcapsRequestFull>(json, (value) => MagicVisibilityPcapsPcapsRequestFull.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<MagicVisibilityPcapsPcapsRequestSimple> magicVisibilityPcapsPcapsRequestSimple;
final Omittable<MagicVisibilityPcapsPcapsRequestFull> magicVisibilityPcapsPcapsRequestFull;

  /// Whether at least one known variant matched.
  bool get isValid => magicVisibilityPcapsPcapsRequestSimple.isPresent || magicVisibilityPcapsPcapsRequestFull.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (magicVisibilityPcapsPcapsRequestSimple.isPresent) magicVisibilityPcapsPcapsRequestSimple.value?.toJson(),
if (magicVisibilityPcapsPcapsRequestFull.isPresent) magicVisibilityPcapsPcapsRequestFull.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MagicVisibilityPcapsPcapsRequestPcap && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MagicVisibilityPcapsPcapsRequestPcap(${toJson()})';
}
