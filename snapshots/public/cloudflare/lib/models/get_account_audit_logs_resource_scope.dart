// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetAccountAuditLogsResourceScope {const GetAccountAuditLogsResourceScope._(this.value);

factory GetAccountAuditLogsResourceScope.fromJson(String json) { return switch (json) {
  'accounts' => accounts,
  'user' => user,
  'zones' => zones,
  'memberships' => memberships,
  _ => GetAccountAuditLogsResourceScope._(json),
}; }

static const GetAccountAuditLogsResourceScope accounts = GetAccountAuditLogsResourceScope._('accounts');

static const GetAccountAuditLogsResourceScope user = GetAccountAuditLogsResourceScope._('user');

static const GetAccountAuditLogsResourceScope zones = GetAccountAuditLogsResourceScope._('zones');

static const GetAccountAuditLogsResourceScope memberships = GetAccountAuditLogsResourceScope._('memberships');

static const List<GetAccountAuditLogsResourceScope> values = [accounts, user, zones, memberships];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAccountAuditLogsResourceScope && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAccountAuditLogsResourceScope($value)'; } 
 }
