// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'entitlements_feature.dart';/// The [Feature](https://docs.stripe.com/api/entitlements/feature) that the customer is entitled to.
@immutable
final class EntitlementsActiveEntitlementFeature {
  const EntitlementsActiveEntitlementFeature({this.string = const Omittable.absent(),
this.entitlementsFeature = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EntitlementsActiveEntitlementFeature._({required this.rawValue, required this.string,
required this.entitlementsFeature,});
  factory EntitlementsActiveEntitlementFeature.fromJson(Object? json) => EntitlementsActiveEntitlementFeature._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
entitlementsFeature: parseAnyOfVariant<EntitlementsFeature>(json, (value) => EntitlementsFeature.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EntitlementsFeature> entitlementsFeature;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || entitlementsFeature.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (entitlementsFeature.isPresent) entitlementsFeature.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EntitlementsActiveEntitlementFeature && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EntitlementsActiveEntitlementFeature(${toJson()})';
}
