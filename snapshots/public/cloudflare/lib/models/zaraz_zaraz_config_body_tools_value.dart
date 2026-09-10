// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_custom_managed_component.dart';import 'zaraz_managed_component.dart';
@immutable
final class ZarazZarazConfigBodyToolsValue {
  const ZarazZarazConfigBodyToolsValue({this.zarazManagedComponent = const Omittable.absent(),
this.zarazCustomManagedComponent = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ZarazZarazConfigBodyToolsValue._({required this.rawValue, required this.zarazManagedComponent,
required this.zarazCustomManagedComponent,});
  factory ZarazZarazConfigBodyToolsValue.fromJson(Object? json) => ZarazZarazConfigBodyToolsValue._(
    rawValue: Omittable(json),
    zarazManagedComponent: parseAnyOfVariant<ZarazManagedComponent>(json, (value) => ZarazManagedComponent.fromJson(value! as Map<String, dynamic>)),
zarazCustomManagedComponent: parseAnyOfVariant<ZarazCustomManagedComponent>(json, (value) => ZarazCustomManagedComponent.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ZarazManagedComponent> zarazManagedComponent;
final Omittable<ZarazCustomManagedComponent> zarazCustomManagedComponent;

  /// Whether at least one known variant matched.
  bool get isValid => zarazManagedComponent.isPresent || zarazCustomManagedComponent.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (zarazManagedComponent.isPresent) zarazManagedComponent.value?.toJson(),
if (zarazCustomManagedComponent.isPresent) zarazCustomManagedComponent.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ZarazZarazConfigBodyToolsValue && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ZarazZarazConfigBodyToolsValue(${toJson()})';
}
