// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the cname flattening setting.
@immutable final class ZonesCnameFlatteningValue {const ZonesCnameFlatteningValue._(this.value);

factory ZonesCnameFlatteningValue.fromJson(String json) { return switch (json) {
  'flatten_at_root' => flattenAtRoot,
  'flatten_all' => flattenAll,
  _ => ZonesCnameFlatteningValue._(json),
}; }

static const ZonesCnameFlatteningValue flattenAtRoot = ZonesCnameFlatteningValue._('flatten_at_root');

static const ZonesCnameFlatteningValue flattenAll = ZonesCnameFlatteningValue._('flatten_all');

static const List<ZonesCnameFlatteningValue> values = [flattenAtRoot, flattenAll];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCnameFlatteningValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCnameFlatteningValue($value)'; } 
 }
