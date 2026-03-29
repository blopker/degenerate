// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetAccountAuditLogsActorTypeNot {const GetAccountAuditLogsActorTypeNot._(this.value);

factory GetAccountAuditLogsActorTypeNot.fromJson(String json) { return switch (json) {
  'account' => account,
  'cloudflare_admin' => cloudflareAdmin,
  'system' => system,
  'user' => user,
  _ => GetAccountAuditLogsActorTypeNot._(json),
}; }

static const GetAccountAuditLogsActorTypeNot account = GetAccountAuditLogsActorTypeNot._('account');

static const GetAccountAuditLogsActorTypeNot cloudflareAdmin = GetAccountAuditLogsActorTypeNot._('cloudflare_admin');

static const GetAccountAuditLogsActorTypeNot system = GetAccountAuditLogsActorTypeNot._('system');

static const GetAccountAuditLogsActorTypeNot user = GetAccountAuditLogsActorTypeNot._('user');

static const List<GetAccountAuditLogsActorTypeNot> values = [account, cloudflareAdmin, system, user];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAccountAuditLogsActorTypeNot && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAccountAuditLogsActorTypeNot($value)'; } 
 }
