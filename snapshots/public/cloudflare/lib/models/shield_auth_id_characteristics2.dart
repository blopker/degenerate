// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_auth_id_characteristic.dart';import 'shield_auth_id_characteristic_jwt_claim.dart';
@immutable
final class ShieldAuthIdCharacteristics2 {
  const ShieldAuthIdCharacteristics2({this.shieldAuthIdCharacteristic = const Omittable.absent(),
this.shieldAuthIdCharacteristicJwtClaim = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ShieldAuthIdCharacteristics2._({required this.rawValue, required this.shieldAuthIdCharacteristic,
required this.shieldAuthIdCharacteristicJwtClaim,});
  factory ShieldAuthIdCharacteristics2.fromJson(Object? json) => ShieldAuthIdCharacteristics2._(
    rawValue: Omittable(json),
    shieldAuthIdCharacteristic: parseAnyOfVariant<ShieldAuthIdCharacteristic>(json, (value) => ShieldAuthIdCharacteristic.fromJson(value! as Map<String, dynamic>)),
shieldAuthIdCharacteristicJwtClaim: parseAnyOfVariant<ShieldAuthIdCharacteristicJwtClaim>(json, (value) => ShieldAuthIdCharacteristicJwtClaim.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ShieldAuthIdCharacteristic> shieldAuthIdCharacteristic;
final Omittable<ShieldAuthIdCharacteristicJwtClaim> shieldAuthIdCharacteristicJwtClaim;

  /// Whether at least one known variant matched.
  bool get isValid => shieldAuthIdCharacteristic.isPresent || shieldAuthIdCharacteristicJwtClaim.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (shieldAuthIdCharacteristic.isPresent) shieldAuthIdCharacteristic.value?.toJson(),
if (shieldAuthIdCharacteristicJwtClaim.isPresent) shieldAuthIdCharacteristicJwtClaim.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ShieldAuthIdCharacteristics2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ShieldAuthIdCharacteristics2(${toJson()})';
}
