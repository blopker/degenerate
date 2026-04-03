// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetAccountAuditLogsActionResult {const GetAccountAuditLogsActionResult._(this.value);

factory GetAccountAuditLogsActionResult.fromJson(String json) { return switch (json) {
  'success' => success,
  'failure' => failure,
  _ => GetAccountAuditLogsActionResult._(json),
}; }

static const GetAccountAuditLogsActionResult success = GetAccountAuditLogsActionResult._('success');

static const GetAccountAuditLogsActionResult failure = GetAccountAuditLogsActionResult._('failure');

static const List<GetAccountAuditLogsActionResult> values = [success, failure];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAccountAuditLogsActionResult && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAccountAuditLogsActionResult($value)'; } 
 }
