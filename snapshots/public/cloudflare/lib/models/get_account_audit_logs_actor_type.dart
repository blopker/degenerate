// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetAccountAuditLogsActorType {const GetAccountAuditLogsActorType._(this.value);

factory GetAccountAuditLogsActorType.fromJson(String json) { return switch (json) {
  'account' => account,
  'cloudflare_admin' => cloudflareAdmin,
  'system' => system,
  'user' => user,
  _ => GetAccountAuditLogsActorType._(json),
}; }

static const GetAccountAuditLogsActorType account = GetAccountAuditLogsActorType._('account');

static const GetAccountAuditLogsActorType cloudflareAdmin = GetAccountAuditLogsActorType._('cloudflare_admin');

static const GetAccountAuditLogsActorType system = GetAccountAuditLogsActorType._('system');

static const GetAccountAuditLogsActorType user = GetAccountAuditLogsActorType._('user');

static const List<GetAccountAuditLogsActorType> values = [account, cloudflareAdmin, system, user];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAccountAuditLogsActorType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAccountAuditLogsActorType($value)'; } 
 }
