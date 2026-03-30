// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_endpoint.dart';import 'shield_host.dart';import 'shield_method.dart';import 'shield_timestamp.dart';import 'shield_uuid.dart';final class ShieldStandardOperation {const ShieldStandardOperation({required this.endpoint, required this.host, required this.method, required this.lastUpdated, required this.operationId, });

factory ShieldStandardOperation.fromJson(Map<String, dynamic> json) { return ShieldStandardOperation(
  endpoint: ShieldEndpoint.fromJson(json['endpoint'] as String),
  host: ShieldHost.fromJson(json['host'] as String),
  method: ShieldMethod.fromJson(json['method'] as String),
  lastUpdated: ShieldTimestamp.fromJson(json['last_updated'] as String),
  operationId: ShieldUuid.fromJson(json['operation_id'] as String),
); }

/// The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
final ShieldEndpoint endpoint;

/// RFC3986-compliant host.
final ShieldHost host;

/// The HTTP method used to access the endpoint.
final ShieldMethod method;

final ShieldTimestamp lastUpdated;

final ShieldUuid operationId;

Map<String, dynamic> toJson() { return {
  'endpoint': endpoint.toJson(),
  'host': host.toJson(),
  'method': method.toJson(),
  'last_updated': lastUpdated.toJson(),
  'operation_id': operationId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('endpoint') &&
      json.containsKey('host') &&
      json.containsKey('method') &&
      json.containsKey('last_updated') &&
      json.containsKey('operation_id'); } 
ShieldStandardOperation copyWith({ShieldEndpoint? endpoint, ShieldHost? host, ShieldMethod? method, ShieldTimestamp? lastUpdated, ShieldUuid? operationId, }) { return ShieldStandardOperation(
  endpoint: endpoint ?? this.endpoint,
  host: host ?? this.host,
  method: method ?? this.method,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  operationId: operationId ?? this.operationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldStandardOperation &&
          endpoint == other.endpoint &&
          host == other.host &&
          method == other.method &&
          lastUpdated == other.lastUpdated &&
          operationId == other.operationId; } 
@override int get hashCode { return Object.hash(endpoint, host, method, lastUpdated, operationId); } 
@override String toString() { return 'ShieldStandardOperation(endpoint: $endpoint, host: $host, method: $method, lastUpdated: $lastUpdated, operationId: $operationId)'; } 
 }
