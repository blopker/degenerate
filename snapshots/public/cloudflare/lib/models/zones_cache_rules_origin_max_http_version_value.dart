// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the Origin Max HTTP Version Setting.
@immutable final class ZonesCacheRulesOriginMaxHttpVersionValue {const ZonesCacheRulesOriginMaxHttpVersionValue._(this.value);

factory ZonesCacheRulesOriginMaxHttpVersionValue.fromJson(String json) { return switch (json) {
  '2' => $2,
  '1' => $1,
  _ => ZonesCacheRulesOriginMaxHttpVersionValue._(json),
}; }

static const ZonesCacheRulesOriginMaxHttpVersionValue $2 = ZonesCacheRulesOriginMaxHttpVersionValue._('2');

static const ZonesCacheRulesOriginMaxHttpVersionValue $1 = ZonesCacheRulesOriginMaxHttpVersionValue._('1');

static const List<ZonesCacheRulesOriginMaxHttpVersionValue> values = [$2, $1];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheRulesOriginMaxHttpVersionValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheRulesOriginMaxHttpVersionValue($value)'; } 
 }
