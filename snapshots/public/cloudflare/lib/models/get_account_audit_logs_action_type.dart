// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetAccountAuditLogsActionType {const GetAccountAuditLogsActionType._(this.value);

factory GetAccountAuditLogsActionType.fromJson(String json) { return switch (json) {
  'create' => create,
  'delete' => delete,
  'view' => view,
  'update' => update,
  _ => GetAccountAuditLogsActionType._(json),
}; }

static const GetAccountAuditLogsActionType create = GetAccountAuditLogsActionType._('create');

static const GetAccountAuditLogsActionType delete = GetAccountAuditLogsActionType._('delete');

static const GetAccountAuditLogsActionType view = GetAccountAuditLogsActionType._('view');

static const GetAccountAuditLogsActionType update = GetAccountAuditLogsActionType._('update');

static const List<GetAccountAuditLogsActionType> values = [create, delete, view, update];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAccountAuditLogsActionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAccountAuditLogsActionType($value)'; } 
 }
