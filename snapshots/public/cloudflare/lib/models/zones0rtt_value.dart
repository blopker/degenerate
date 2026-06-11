// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the 0-RTT setting.
@immutable final class Zones0rttValue {const Zones0rttValue._(this.value);

factory Zones0rttValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => Zones0rttValue._(json),
}; }

static const Zones0rttValue $on = Zones0rttValue._('on');

static const Zones0rttValue off = Zones0rttValue._('off');

static const List<Zones0rttValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Zones0rttValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Zones0rttValue($value)'; } 
 }
