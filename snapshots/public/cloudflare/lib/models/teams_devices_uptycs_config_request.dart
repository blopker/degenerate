// GENERATED CODE - DO NOT MODIFY BY HAND

final class TeamsDevicesUptycsConfigRequest {const TeamsDevicesUptycsConfigRequest({required this.apiUrl, required this.clientKey, required this.clientSecret, required this.customerId, });

factory TeamsDevicesUptycsConfigRequest.fromJson(Map<String, dynamic> json) { return TeamsDevicesUptycsConfigRequest(
  apiUrl: json['api_url'] as String,
  clientKey: json['client_key'] as String,
  clientSecret: json['client_secret'] as String,
  customerId: json['customer_id'] as String,
); }

/// The Uptycs API URL.
final String apiUrl;

/// The Uptycs client secret.
final String clientKey;

/// The Uptycs client secret.
final String clientSecret;

/// The Uptycs customer ID.
final String customerId;

Map<String, dynamic> toJson() { return {
  'api_url': apiUrl,
  'client_key': clientKey,
  'client_secret': clientSecret,
  'customer_id': customerId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('api_url') && json['api_url'] is String &&
      json.containsKey('client_key') && json['client_key'] is String &&
      json.containsKey('client_secret') && json['client_secret'] is String &&
      json.containsKey('customer_id') && json['customer_id'] is String; } 
TeamsDevicesUptycsConfigRequest copyWith({String? apiUrl, String? clientKey, String? clientSecret, String? customerId, }) { return TeamsDevicesUptycsConfigRequest(
  apiUrl: apiUrl ?? this.apiUrl,
  clientKey: clientKey ?? this.clientKey,
  clientSecret: clientSecret ?? this.clientSecret,
  customerId: customerId ?? this.customerId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesUptycsConfigRequest &&
          apiUrl == other.apiUrl &&
          clientKey == other.clientKey &&
          clientSecret == other.clientSecret &&
          customerId == other.customerId; } 
@override int get hashCode { return Object.hash(apiUrl, clientKey, clientSecret, customerId); } 
@override String toString() { return 'TeamsDevicesUptycsConfigRequest(apiUrl: $apiUrl, clientKey: $clientKey, clientSecret: $clientSecret, customerId: $customerId)'; } 
 }
