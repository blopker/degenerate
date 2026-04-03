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
typedef ZonesCacheTtlByStatusValueValue = OneOf2<ZonesCacheTtlByStatusValueValueVariant1,int>;
