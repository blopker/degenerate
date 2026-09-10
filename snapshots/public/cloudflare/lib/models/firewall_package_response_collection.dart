// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_package_response_collection_variant2.dart';import 'response_collection18.dart';
@immutable
final class FirewallPackageResponseCollection {
  const FirewallPackageResponseCollection({this.responseCollection18 = const Omittable.absent(),
this.firewallPackageResponseCollectionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const FirewallPackageResponseCollection._({required this.rawValue, required this.responseCollection18,
required this.firewallPackageResponseCollectionVariant2,});
  factory FirewallPackageResponseCollection.fromJson(Object? json) => FirewallPackageResponseCollection._(
    rawValue: Omittable(json),
    responseCollection18: parseAnyOfVariant<ResponseCollection18>(json, (value) => ResponseCollection18.fromJson(value! as Map<String, dynamic>)),
firewallPackageResponseCollectionVariant2: parseAnyOfVariant<FirewallPackageResponseCollectionVariant2>(json, (value) => FirewallPackageResponseCollectionVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ResponseCollection18> responseCollection18;
final Omittable<FirewallPackageResponseCollectionVariant2> firewallPackageResponseCollectionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => responseCollection18.isPresent || firewallPackageResponseCollectionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (responseCollection18.isPresent) responseCollection18.value?.toJson(),
if (firewallPackageResponseCollectionVariant2.isPresent) firewallPackageResponseCollectionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is FirewallPackageResponseCollection && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'FirewallPackageResponseCollection(${toJson()})';
}
