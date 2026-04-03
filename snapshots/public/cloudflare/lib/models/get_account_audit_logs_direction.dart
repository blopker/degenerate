// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Sets sorting order.
@immutable final class GetAccountAuditLogsDirection {const GetAccountAuditLogsDirection._(this.value);

factory GetAccountAuditLogsDirection.fromJson(String json) { return switch (json) {
  'desc' => desc,
  'asc' => asc,
  _ => GetAccountAuditLogsDirection._(json),
}; }

static const GetAccountAuditLogsDirection desc = GetAccountAuditLogsDirection._('desc');

static const GetAccountAuditLogsDirection asc = GetAccountAuditLogsDirection._('asc');

static const List<GetAccountAuditLogsDirection> values = [desc, asc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAccountAuditLogsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAccountAuditLogsDirection($value)'; } 
 }
