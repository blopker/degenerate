// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// `no-store` (equivalent to -1), `no-cache` (equivalent to 0)
/// 
@immutable final class ZonesCacheTtlByStatusValueValueVariant1 {const ZonesCacheTtlByStatusValueValueVariant1._(this.value);

factory ZonesCacheTtlByStatusValueValueVariant1.fromJson(String json) { return switch (json) {
  'no-cache' => noCache,
  'no-store' => noStore,
  _ => ZonesCacheTtlByStatusValueValueVariant1._(json),
}; }

static const ZonesCacheTtlByStatusValueValueVariant1 noCache = ZonesCacheTtlByStatusValueValueVariant1._('no-cache');

static const ZonesCacheTtlByStatusValueValueVariant1 noStore = ZonesCacheTtlByStatusValueValueVariant1._('no-store');

static const List<ZonesCacheTtlByStatusValueValueVariant1> values = [noCache, noStore];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheTtlByStatusValueValueVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheTtlByStatusValueValueVariant1($value)'; } 
 }

@immutable
final class ZonesCacheTtlByStatusValueValue {
  const ZonesCacheTtlByStatusValueValue({this.zonesCacheTtlByStatusValueValueVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ZonesCacheTtlByStatusValueValue._({required this.rawValue, required this.zonesCacheTtlByStatusValueValueVariant1,
required this.$int,});
  factory ZonesCacheTtlByStatusValueValue.fromJson(Object? json) => ZonesCacheTtlByStatusValueValue._(
    rawValue: Omittable(json),
    zonesCacheTtlByStatusValueValueVariant1: parseAnyOfVariant<ZonesCacheTtlByStatusValueValueVariant1>(json, (value) => ZonesCacheTtlByStatusValueValueVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ZonesCacheTtlByStatusValueValueVariant1> zonesCacheTtlByStatusValueValueVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => zonesCacheTtlByStatusValueValueVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (zonesCacheTtlByStatusValueValueVariant1.isPresent) zonesCacheTtlByStatusValueValueVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ZonesCacheTtlByStatusValueValue && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ZonesCacheTtlByStatusValueValue(${toJson()})';
}
