// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetAccountAuditLogsActionResultNot {const GetAccountAuditLogsActionResultNot._(this.value);

factory GetAccountAuditLogsActionResultNot.fromJson(String json) { return switch (json) {
  'success' => success,
  'failure' => failure,
  _ => GetAccountAuditLogsActionResultNot._(json),
}; }

static const GetAccountAuditLogsActionResultNot success = GetAccountAuditLogsActionResultNot._('success');

static const GetAccountAuditLogsActionResultNot failure = GetAccountAuditLogsActionResultNot._('failure');

static const List<GetAccountAuditLogsActionResultNot> values = [success, failure];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAccountAuditLogsActionResultNot && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAccountAuditLogsActionResultNot($value)'; } 
 }
