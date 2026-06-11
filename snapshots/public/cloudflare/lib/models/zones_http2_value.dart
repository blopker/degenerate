// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the HTTP2 setting.
@immutable final class ZonesHttp2Value {const ZonesHttp2Value._(this.value);

factory ZonesHttp2Value.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesHttp2Value._(json),
}; }

static const ZonesHttp2Value $on = ZonesHttp2Value._('on');

static const ZonesHttp2Value off = ZonesHttp2Value._('off');

static const List<ZonesHttp2Value> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesHttp2Value && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesHttp2Value($value)'; } 
 }
