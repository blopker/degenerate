// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TeamsDevicesCrowdstrikeConfigRequest {const TeamsDevicesCrowdstrikeConfigRequest({required this.apiUrl, required this.clientId, required this.clientSecret, required this.customerId, });

factory TeamsDevicesCrowdstrikeConfigRequest.fromJson(Map<String, dynamic> json) { return TeamsDevicesCrowdstrikeConfigRequest(
  apiUrl: json['api_url'] as String,
  clientId: json['client_id'] as String,
  clientSecret: json['client_secret'] as String,
  customerId: json['customer_id'] as String,
); }

/// The Crowdstrike API URL.
final String apiUrl;

/// The Crowdstrike client ID.
final String clientId;

/// The Crowdstrike client secret.
final String clientSecret;

/// The Crowdstrike customer ID.
final String customerId;

Map<String, dynamic> toJson() { return {
  'api_url': apiUrl,
  'client_id': clientId,
  'client_secret': clientSecret,
  'customer_id': customerId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('api_url') && json['api_url'] is String &&
      json.containsKey('client_id') && json['client_id'] is String &&
      json.containsKey('client_secret') && json['client_secret'] is String &&
      json.containsKey('customer_id') && json['customer_id'] is String; } 
TeamsDevicesCrowdstrikeConfigRequest copyWith({String? apiUrl, String? clientId, String? clientSecret, String? customerId, }) { return TeamsDevicesCrowdstrikeConfigRequest(
  apiUrl: apiUrl ?? this.apiUrl,
  clientId: clientId ?? this.clientId,
  clientSecret: clientSecret ?? this.clientSecret,
  customerId: customerId ?? this.customerId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesCrowdstrikeConfigRequest &&
          apiUrl == other.apiUrl &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          customerId == other.customerId; } 
@override int get hashCode { return Object.hash(apiUrl, clientId, clientSecret, customerId); } 
@override String toString() { return 'TeamsDevicesCrowdstrikeConfigRequest(apiUrl: $apiUrl, clientId: $clientId, clientSecret: $clientSecret, customerId: $customerId)'; } 
 }
