// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetAccountAuditLogsActionTypeNot {const GetAccountAuditLogsActionTypeNot._(this.value);

factory GetAccountAuditLogsActionTypeNot.fromJson(String json) { return switch (json) {
  'create' => create,
  'delete' => delete,
  'view' => view,
  'update' => update,
  _ => GetAccountAuditLogsActionTypeNot._(json),
}; }

static const GetAccountAuditLogsActionTypeNot create = GetAccountAuditLogsActionTypeNot._('create');

static const GetAccountAuditLogsActionTypeNot delete = GetAccountAuditLogsActionTypeNot._('delete');

static const GetAccountAuditLogsActionTypeNot view = GetAccountAuditLogsActionTypeNot._('view');

static const GetAccountAuditLogsActionTypeNot update = GetAccountAuditLogsActionTypeNot._('update');

static const List<GetAccountAuditLogsActionTypeNot> values = [create, delete, view, update];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAccountAuditLogsActionTypeNot && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAccountAuditLogsActionTypeNot($value)'; } 
 }
