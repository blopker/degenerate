// GENERATED CODE - DO NOT MODIFY BY HAND

/// The authentication scheme to use when making SCIM requests to this application.
final class AccessScimConfigAuthenticationAccessServiceTokenScheme {const AccessScimConfigAuthenticationAccessServiceTokenScheme._(this.value);

factory AccessScimConfigAuthenticationAccessServiceTokenScheme.fromJson(String json) { return switch (json) {
  'access_service_token' => accessServiceToken,
  _ => AccessScimConfigAuthenticationAccessServiceTokenScheme._(json),
}; }

static const AccessScimConfigAuthenticationAccessServiceTokenScheme accessServiceToken = AccessScimConfigAuthenticationAccessServiceTokenScheme._('access_service_token');

static const List<AccessScimConfigAuthenticationAccessServiceTokenScheme> values = [accessServiceToken];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessScimConfigAuthenticationAccessServiceTokenScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessScimConfigAuthenticationAccessServiceTokenScheme($value)'; } 
 }
/// Attributes for configuring Access Service Token authentication scheme for SCIM provisioning to an application.
final class AccessScimConfigAuthenticationAccessServiceToken {const AccessScimConfigAuthenticationAccessServiceToken({required this.clientId, required this.clientSecret, required this.scheme, });

factory AccessScimConfigAuthenticationAccessServiceToken.fromJson(Map<String, dynamic> json) { return AccessScimConfigAuthenticationAccessServiceToken(
  clientId: json['client_id'] as String,
  clientSecret: json['client_secret'] as String,
  scheme: AccessScimConfigAuthenticationAccessServiceTokenScheme.fromJson(json['scheme'] as String),
); }

/// Client ID of the Access service token used to authenticate with the remote service.
final String clientId;

/// Client secret of the Access service token used to authenticate with the remote service.
final String clientSecret;

/// The authentication scheme to use when making SCIM requests to this application.
final AccessScimConfigAuthenticationAccessServiceTokenScheme scheme;

Map<String, dynamic> toJson() { return {
  'client_id': clientId,
  'client_secret': clientSecret,
  'scheme': scheme.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('client_id') && json['client_id'] is String &&
      json.containsKey('client_secret') && json['client_secret'] is String &&
      json.containsKey('scheme'); } 
AccessScimConfigAuthenticationAccessServiceToken copyWith({String? clientId, String? clientSecret, AccessScimConfigAuthenticationAccessServiceTokenScheme? scheme, }) { return AccessScimConfigAuthenticationAccessServiceToken(
  clientId: clientId ?? this.clientId,
  clientSecret: clientSecret ?? this.clientSecret,
  scheme: scheme ?? this.scheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessScimConfigAuthenticationAccessServiceToken &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          scheme == other.scheme; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, scheme); } 
@override String toString() { return 'AccessScimConfigAuthenticationAccessServiceToken(clientId: $clientId, clientSecret: $clientSecret, scheme: $scheme)'; } 
 }
