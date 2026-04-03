// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetAccountAuditLogsActorContextNot {const GetAccountAuditLogsActorContextNot._(this.value);

factory GetAccountAuditLogsActorContextNot.fromJson(String json) { return switch (json) {
  'api_key' => apiKey,
  'api_token' => apiToken,
  'dash' => dash,
  'oauth' => oauth,
  'origin_ca_key' => originCaKey,
  _ => GetAccountAuditLogsActorContextNot._(json),
}; }

static const GetAccountAuditLogsActorContextNot apiKey = GetAccountAuditLogsActorContextNot._('api_key');

static const GetAccountAuditLogsActorContextNot apiToken = GetAccountAuditLogsActorContextNot._('api_token');

static const GetAccountAuditLogsActorContextNot dash = GetAccountAuditLogsActorContextNot._('dash');

static const GetAccountAuditLogsActorContextNot oauth = GetAccountAuditLogsActorContextNot._('oauth');

static const GetAccountAuditLogsActorContextNot originCaKey = GetAccountAuditLogsActorContextNot._('origin_ca_key');

static const List<GetAccountAuditLogsActorContextNot> values = [apiKey, apiToken, dash, oauth, originCaKey];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAccountAuditLogsActorContextNot && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAccountAuditLogsActorContextNot($value)'; } 
 }
