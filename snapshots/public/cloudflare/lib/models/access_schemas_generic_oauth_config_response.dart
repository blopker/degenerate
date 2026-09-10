// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasGenericOauthConfigResponse {const AccessSchemasGenericOauthConfigResponse({this.clientId});

factory AccessSchemasGenericOauthConfigResponse.fromJson(Map<String, dynamic> json) { return AccessSchemasGenericOauthConfigResponse(
  clientId: json['client_id'] as String?,
); }

/// Your OAuth Client ID
final String? clientId;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id'}.contains(key)); } 
AccessSchemasGenericOauthConfigResponse copyWith({String? Function()? clientId}) { return AccessSchemasGenericOauthConfigResponse(
  clientId: clientId != null ? clientId() : this.clientId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasGenericOauthConfigResponse &&
          clientId == other.clientId; } 
@override int get hashCode { return clientId.hashCode; } 
@override String toString() { return 'AccessSchemasGenericOauthConfigResponse(clientId: $clientId)'; } 
 }
