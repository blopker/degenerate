// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Direction to order DNS views in.
@immutable final class DnsSettingsDirection {const DnsSettingsDirection._(this.value);

factory DnsSettingsDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => DnsSettingsDirection._(json),
}; }

static const DnsSettingsDirection asc = DnsSettingsDirection._('asc');

static const DnsSettingsDirection desc = DnsSettingsDirection._('desc');

static const List<DnsSettingsDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsSettingsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsSettingsDirection($value)'; } 
 }
