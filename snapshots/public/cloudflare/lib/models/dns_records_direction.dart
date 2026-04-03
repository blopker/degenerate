// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Direction to order DNS records in.
@immutable final class DnsRecordsDirection {const DnsRecordsDirection._(this.value);

factory DnsRecordsDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => DnsRecordsDirection._(json),
}; }

static const DnsRecordsDirection asc = DnsRecordsDirection._('asc');

static const DnsRecordsDirection desc = DnsRecordsDirection._('desc');

static const List<DnsRecordsDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsRecordsDirection($value)'; } 
 }
