// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_database.dart';import 'hyperdrive_internet_origin.dart';import 'hyperdrive_over_access_origin.dart';import 'origin_database.dart';
@immutable
final class HyperdriveHyperdriveConfigPatchOrigin {
  const HyperdriveHyperdriveConfigPatchOrigin({this.hyperdriveHyperdriveDatabase = const Omittable.absent(),
this.originDatabase = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const HyperdriveHyperdriveConfigPatchOrigin._({required this.rawValue, required this.hyperdriveHyperdriveDatabase,
required this.originDatabase,});
  factory HyperdriveHyperdriveConfigPatchOrigin.fromJson(Object? json) => HyperdriveHyperdriveConfigPatchOrigin._(
    rawValue: Omittable(json),
    hyperdriveHyperdriveDatabase: parseAnyOfVariant<HyperdriveHyperdriveDatabase>(json, (value) => HyperdriveHyperdriveDatabase.fromJson(value! as Map<String, dynamic>)),
originDatabase: parseAnyOfVariant<OriginDatabase>(json, (value) => OneOf2.parse(value, fromA: (v) => HyperdriveInternetOrigin.fromJson(v as Map<String, dynamic>), fromB: (v) => HyperdriveOverAccessOrigin.fromJson(v as Map<String, dynamic>),)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<HyperdriveHyperdriveDatabase> hyperdriveHyperdriveDatabase;
final Omittable<OriginDatabase> originDatabase;

  /// Whether at least one known variant matched.
  bool get isValid => hyperdriveHyperdriveDatabase.isPresent || originDatabase.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (hyperdriveHyperdriveDatabase.isPresent) hyperdriveHyperdriveDatabase.value?.toJson(),
if (originDatabase.isPresent) originDatabase.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is HyperdriveHyperdriveConfigPatchOrigin && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'HyperdriveHyperdriveConfigPatchOrigin(${toJson()})';
}
