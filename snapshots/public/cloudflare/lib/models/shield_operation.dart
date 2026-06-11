// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'routing.dart';import 'shield_endpoint.dart';import 'shield_host.dart';import 'shield_method.dart';import 'shield_operation_feature_confidence_intervals.dart';import 'shield_operation_feature_parameter_schemas.dart';import 'shield_operation_feature_schema_info.dart';import 'shield_operation_feature_thresholds.dart';import 'shield_operation_features.dart';import 'shield_timestamp.dart';import 'shield_uuid.dart';@immutable final class ShieldOperation {const ShieldOperation({required this.endpoint, required this.host, required this.method, required this.lastUpdated, required this.operationId, this.features, });

factory ShieldOperation.fromJson(Map<String, dynamic> json) { return ShieldOperation(
  endpoint: ShieldEndpoint.fromJson(json['endpoint'] as String),
  host: ShieldHost.fromJson(json['host'] as String),
  method: ShieldMethod.fromJson(json['method'] as String),
  lastUpdated: ShieldTimestamp.fromJson(json['last_updated'] as String),
  operationId: ShieldUuid.fromJson(json['operation_id'] as String),
  features: json['features'] != null ? OneOf5.parse(json['features'], fromA: (v) => ShieldOperationFeatureThresholds.fromJson(v as Map<String, dynamic>), fromB: (v) => ShieldOperationFeatureParameterSchemas.fromJson(v as Map<String, dynamic>), fromC: (v) => Routing.fromJson(v as Map<String, dynamic>), fromD: (v) => ShieldOperationFeatureConfidenceIntervals.fromJson(v as Map<String, dynamic>), fromE: (v) => ShieldOperationFeatureSchemaInfo.fromJson(v as Map<String, dynamic>),) : null,
); }

/// The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
final ShieldEndpoint endpoint;

/// RFC3986-compliant host.
final ShieldHost host;

/// The HTTP method used to access the endpoint.
final ShieldMethod method;

final ShieldTimestamp lastUpdated;

final ShieldUuid operationId;

final ShieldOperationFeatures? features;

Map<String, dynamic> toJson() { return {
  'endpoint': endpoint.toJson(),
  'host': host.toJson(),
  'method': method.toJson(),
  'last_updated': lastUpdated.toJson(),
  'operation_id': operationId.toJson(),
  if (features != null) 'features': features?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('endpoint') &&
      json.containsKey('host') &&
      json.containsKey('method') &&
      json.containsKey('last_updated') &&
      json.containsKey('operation_id'); } 
ShieldOperation copyWith({ShieldEndpoint? endpoint, ShieldHost? host, ShieldMethod? method, ShieldTimestamp? lastUpdated, ShieldUuid? operationId, ShieldOperationFeatures Function()? features, }) { return ShieldOperation(
  endpoint: endpoint ?? this.endpoint,
  host: host ?? this.host,
  method: method ?? this.method,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  operationId: operationId ?? this.operationId,
  features: features != null ? features() : this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOperation &&
          endpoint == other.endpoint &&
          host == other.host &&
          method == other.method &&
          lastUpdated == other.lastUpdated &&
          operationId == other.operationId &&
          features == other.features; } 
@override int get hashCode { return Object.hash(endpoint, host, method, lastUpdated, operationId, features); } 
@override String toString() { return 'ShieldOperation(endpoint: $endpoint, host: $host, method: $method, lastUpdated: $lastUpdated, operationId: $operationId, features: $features)'; } 
 }
