// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the Privacy Pass v1 (deprecated) zone setting
@immutable final class ZonesPrivacyPassValue {const ZonesPrivacyPassValue._(this.value);

factory ZonesPrivacyPassValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesPrivacyPassValue._(json),
}; }

static const ZonesPrivacyPassValue $on = ZonesPrivacyPassValue._('on');

static const ZonesPrivacyPassValue off = ZonesPrivacyPassValue._('off');

static const List<ZonesPrivacyPassValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesPrivacyPassValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesPrivacyPassValue($value)'; } 
 }
