// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TeamsDevicesTaniumConfigRequest {const TeamsDevicesTaniumConfigRequest({required this.apiUrl, required this.clientSecret, this.accessClientId, this.accessClientSecret, });

factory TeamsDevicesTaniumConfigRequest.fromJson(Map<String, dynamic> json) { return TeamsDevicesTaniumConfigRequest(
  accessClientId: json['access_client_id'] as String?,
  accessClientSecret: json['access_client_secret'] as String?,
  apiUrl: json['api_url'] as String,
  clientSecret: json['client_secret'] as String,
); }

/// If present, this id will be passed in the `CF-Access-Client-ID` header when hitting the `api_url`.
final String? accessClientId;

/// If present, this secret will be passed in the `CF-Access-Client-Secret` header when hitting the `api_url`.
final String? accessClientSecret;

/// The Tanium API URL.
final String apiUrl;

/// The Tanium client secret.
final String clientSecret;

Map<String, dynamic> toJson() { return {
  'access_client_id': ?accessClientId,
  'access_client_secret': ?accessClientSecret,
  'api_url': apiUrl,
  'client_secret': clientSecret,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('api_url') && json['api_url'] is String &&
      json.containsKey('client_secret') && json['client_secret'] is String; } 
TeamsDevicesTaniumConfigRequest copyWith({String Function()? accessClientId, String Function()? accessClientSecret, String? apiUrl, String? clientSecret, }) { return TeamsDevicesTaniumConfigRequest(
  accessClientId: accessClientId != null ? accessClientId() : this.accessClientId,
  accessClientSecret: accessClientSecret != null ? accessClientSecret() : this.accessClientSecret,
  apiUrl: apiUrl ?? this.apiUrl,
  clientSecret: clientSecret ?? this.clientSecret,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesTaniumConfigRequest &&
          accessClientId == other.accessClientId &&
          accessClientSecret == other.accessClientSecret &&
          apiUrl == other.apiUrl &&
          clientSecret == other.clientSecret; } 
@override int get hashCode { return Object.hash(accessClientId, accessClientSecret, apiUrl, clientSecret); } 
@override String toString() { return 'TeamsDevicesTaniumConfigRequest(accessClientId: $accessClientId, accessClientSecret: $accessClientSecret, apiUrl: $apiUrl, clientSecret: $clientSecret)'; } 
 }
