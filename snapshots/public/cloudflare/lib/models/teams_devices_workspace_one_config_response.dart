// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The Workspace One Config Response.
@immutable final class TeamsDevicesWorkspaceOneConfigResponse {const TeamsDevicesWorkspaceOneConfigResponse({required this.apiUrl, required this.authUrl, required this.clientId, });

factory TeamsDevicesWorkspaceOneConfigResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesWorkspaceOneConfigResponse(
  apiUrl: json['api_url'] as String,
  authUrl: json['auth_url'] as String,
  clientId: json['client_id'] as String,
); }

/// The Workspace One API URL provided in the Workspace One Admin Dashboard.
final String apiUrl;

/// The Workspace One Authorization URL depending on your region.
final String authUrl;

/// The Workspace One client ID provided in the Workspace One Admin Dashboard.
final String clientId;

Map<String, dynamic> toJson() { return {
  'api_url': apiUrl,
  'auth_url': authUrl,
  'client_id': clientId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('api_url') && json['api_url'] is String &&
      json.containsKey('auth_url') && json['auth_url'] is String &&
      json.containsKey('client_id') && json['client_id'] is String; } 
TeamsDevicesWorkspaceOneConfigResponse copyWith({String? apiUrl, String? authUrl, String? clientId, }) { return TeamsDevicesWorkspaceOneConfigResponse(
  apiUrl: apiUrl ?? this.apiUrl,
  authUrl: authUrl ?? this.authUrl,
  clientId: clientId ?? this.clientId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesWorkspaceOneConfigResponse &&
          apiUrl == other.apiUrl &&
          authUrl == other.authUrl &&
          clientId == other.clientId; } 
@override int get hashCode { return Object.hash(apiUrl, authUrl, clientId); } 
@override String toString() { return 'TeamsDevicesWorkspaceOneConfigResponse(apiUrl: $apiUrl, authUrl: $authUrl, clientId: $clientId)'; } 
 }
