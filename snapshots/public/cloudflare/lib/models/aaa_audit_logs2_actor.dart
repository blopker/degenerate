// GENERATED CODE - DO NOT MODIFY BY HAND

final class AaaAuditLogs2ActorContext {const AaaAuditLogs2ActorContext._(this.value);

factory AaaAuditLogs2ActorContext.fromJson(String json) { return switch (json) {
  'api_key' => apiKey,
  'api_token' => apiToken,
  'dash' => dash,
  'oauth' => oauth,
  'origin_ca_key' => originCaKey,
  _ => AaaAuditLogs2ActorContext._(json),
}; }

static const AaaAuditLogs2ActorContext apiKey = AaaAuditLogs2ActorContext._('api_key');

static const AaaAuditLogs2ActorContext apiToken = AaaAuditLogs2ActorContext._('api_token');

static const AaaAuditLogs2ActorContext dash = AaaAuditLogs2ActorContext._('dash');

static const AaaAuditLogs2ActorContext oauth = AaaAuditLogs2ActorContext._('oauth');

static const AaaAuditLogs2ActorContext originCaKey = AaaAuditLogs2ActorContext._('origin_ca_key');

static const List<AaaAuditLogs2ActorContext> values = [apiKey, apiToken, dash, oauth, originCaKey];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AaaAuditLogs2ActorContext && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AaaAuditLogs2ActorContext($value)'; } 
 }
/// The type of actor.
final class AaaAuditLogs2ActorType {const AaaAuditLogs2ActorType._(this.value);

factory AaaAuditLogs2ActorType.fromJson(String json) { return switch (json) {
  'account' => account,
  'cloudflare_admin' => cloudflareAdmin,
  'system' => system,
  'user' => user,
  _ => AaaAuditLogs2ActorType._(json),
}; }

static const AaaAuditLogs2ActorType account = AaaAuditLogs2ActorType._('account');

static const AaaAuditLogs2ActorType cloudflareAdmin = AaaAuditLogs2ActorType._('cloudflare_admin');

static const AaaAuditLogs2ActorType system = AaaAuditLogs2ActorType._('system');

static const AaaAuditLogs2ActorType user = AaaAuditLogs2ActorType._('user');

static const List<AaaAuditLogs2ActorType> values = [account, cloudflareAdmin, system, user];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AaaAuditLogs2ActorType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AaaAuditLogs2ActorType($value)'; } 
 }
/// Provides details about the actor who performed the action.
final class AaaAuditLogs2Actor {const AaaAuditLogs2Actor({this.context, this.email, this.id, this.ipAddress, this.tokenId, this.tokenName, this.type, });

factory AaaAuditLogs2Actor.fromJson(Map<String, dynamic> json) { return AaaAuditLogs2Actor(
  context: json['context'] != null ? AaaAuditLogs2ActorContext.fromJson(json['context'] as String) : null,
  email: json['email'] as String?,
  id: json['id'] as String?,
  ipAddress: json['ip_address'] as String?,
  tokenId: json['token_id'] as String?,
  tokenName: json['token_name'] as String?,
  type: json['type'] != null ? AaaAuditLogs2ActorType.fromJson(json['type'] as String) : null,
); }

final AaaAuditLogs2ActorContext? context;

/// The email of the actor who performed the action.
final String? email;

/// The ID of the actor who performed the action. If a user performed the action, this will be their User ID.
final String? id;

/// The IP address of the request that performed the action.
final String? ipAddress;

/// Filters by the API token ID when the actor context is an api_token.
final String? tokenId;

/// Filters by the API token name when the actor context is an api_token.
final String? tokenName;

/// The type of actor.
final AaaAuditLogs2ActorType? type;

Map<String, dynamic> toJson() { return {
  if (context != null) 'context': context?.toJson(),
  'email': ?email,
  'id': ?id,
  'ip_address': ?ipAddress,
  'token_id': ?tokenId,
  'token_name': ?tokenName,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'context', 'email', 'id', 'ip_address', 'token_id', 'token_name', 'type'}.contains(key)); } 
AaaAuditLogs2Actor copyWith({AaaAuditLogs2ActorContext Function()? context, String Function()? email, String Function()? id, String Function()? ipAddress, String Function()? tokenId, String Function()? tokenName, AaaAuditLogs2ActorType Function()? type, }) { return AaaAuditLogs2Actor(
  context: context != null ? context() : this.context,
  email: email != null ? email() : this.email,
  id: id != null ? id() : this.id,
  ipAddress: ipAddress != null ? ipAddress() : this.ipAddress,
  tokenId: tokenId != null ? tokenId() : this.tokenId,
  tokenName: tokenName != null ? tokenName() : this.tokenName,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaAuditLogs2Actor &&
          context == other.context &&
          email == other.email &&
          id == other.id &&
          ipAddress == other.ipAddress &&
          tokenId == other.tokenId &&
          tokenName == other.tokenName &&
          type == other.type; } 
@override int get hashCode { return Object.hash(context, email, id, ipAddress, tokenId, tokenName, type); } 
@override String toString() { return 'AaaAuditLogs2Actor(context: $context, email: $email, id: $id, ipAddress: $ipAddress, tokenId: $tokenId, tokenName: $tokenName, type: $type)'; } 
 }
