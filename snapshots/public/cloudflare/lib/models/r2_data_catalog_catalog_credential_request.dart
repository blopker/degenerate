// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Contains request to store catalog credentials.
@immutable final class R2DataCatalogCatalogCredentialRequest {const R2DataCatalogCatalogCredentialRequest({required this.token});

factory R2DataCatalogCatalogCredentialRequest.fromJson(Map<String, dynamic> json) { return R2DataCatalogCatalogCredentialRequest(
  token: json['token'] as String,
); }

/// Provides the Cloudflare API token for accessing R2.
final String token;

Map<String, dynamic> toJson() { return {
  'token': token,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('token') && json['token'] is String; } 
R2DataCatalogCatalogCredentialRequest copyWith({String? token}) { return R2DataCatalogCatalogCredentialRequest(
  token: token ?? this.token,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogCatalogCredentialRequest &&
          token == other.token; } 
@override int get hashCode { return token.hashCode; } 
@override String toString() { return 'R2DataCatalogCatalogCredentialRequest(token: $token)'; } 
 }
