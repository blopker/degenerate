// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesReplaceInsecureJsValue {const ZonesReplaceInsecureJsValue._(this.value);

factory ZonesReplaceInsecureJsValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesReplaceInsecureJsValue._(json),
}; }

static const ZonesReplaceInsecureJsValue $on = ZonesReplaceInsecureJsValue._('on');

static const ZonesReplaceInsecureJsValue off = ZonesReplaceInsecureJsValue._('off');

static const List<ZonesReplaceInsecureJsValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesReplaceInsecureJsValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesReplaceInsecureJsValue($value)'; } 
 }
