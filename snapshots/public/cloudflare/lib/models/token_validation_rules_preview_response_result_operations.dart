// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_endpoint.dart';import 'shield_host.dart';import 'shield_method.dart';import 'shield_selector_operation_state.dart';import 'shield_timestamp.dart';import 'shield_uuid.dart';final class TokenValidationRulesPreviewResponseResultOperations {const TokenValidationRulesPreviewResponseResultOperations({this.endpoint, this.host, this.lastUpdated, this.method, this.operationId, this.state, });

factory TokenValidationRulesPreviewResponseResultOperations.fromJson(Map<String, dynamic> json) { return TokenValidationRulesPreviewResponseResultOperations(
  endpoint: json['endpoint'] != null ? ShieldEndpoint.fromJson(json['endpoint'] as String) : null,
  host: json['host'] != null ? ShieldHost.fromJson(json['host'] as String) : null,
  lastUpdated: json['last_updated'] != null ? ShieldTimestamp.fromJson(json['last_updated'] as String) : null,
  method: json['method'] != null ? ShieldMethod.fromJson(json['method'] as String) : null,
  operationId: json['operation_id'] != null ? ShieldUuid.fromJson(json['operation_id'] as String) : null,
  state: json['state'] != null ? ShieldSelectorOperationState.fromJson(json['state'] as String) : null,
); }

/// The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
final ShieldEndpoint? endpoint;

/// RFC3986-compliant host.
final ShieldHost? host;

final ShieldTimestamp? lastUpdated;

/// The HTTP method used to access the endpoint.
final ShieldMethod? method;

/// UUID.
final ShieldUuid? operationId;

/// Details how `selector` interacted with an operation:
///   - `included` operations are included by `selector` and will be covered by the Token Validation Rule
///   - `excluded` operations are excluded by `selector` and will not be covered by the Token Validation Rule
///   - `ignored` operations are not included by `selector` and will not be covered by the Token Validation Rule
/// 
final ShieldSelectorOperationState? state;

Map<String, dynamic> toJson() { return {
  if (endpoint != null) 'endpoint': endpoint?.toJson(),
  if (host != null) 'host': host?.toJson(),
  if (lastUpdated != null) 'last_updated': lastUpdated?.toJson(),
  if (method != null) 'method': method?.toJson(),
  if (operationId != null) 'operation_id': operationId?.toJson(),
  if (state != null) 'state': state?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'endpoint', 'host', 'last_updated', 'method', 'operation_id', 'state'}.contains(key)); } 
TokenValidationRulesPreviewResponseResultOperations copyWith({ShieldEndpoint Function()? endpoint, ShieldHost Function()? host, ShieldTimestamp Function()? lastUpdated, ShieldMethod Function()? method, ShieldUuid Function()? operationId, ShieldSelectorOperationState Function()? state, }) { return TokenValidationRulesPreviewResponseResultOperations(
  endpoint: endpoint != null ? endpoint() : this.endpoint,
  host: host != null ? host() : this.host,
  lastUpdated: lastUpdated != null ? lastUpdated() : this.lastUpdated,
  method: method != null ? method() : this.method,
  operationId: operationId != null ? operationId() : this.operationId,
  state: state != null ? state() : this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationRulesPreviewResponseResultOperations &&
          endpoint == other.endpoint &&
          host == other.host &&
          lastUpdated == other.lastUpdated &&
          method == other.method &&
          operationId == other.operationId &&
          state == other.state; } 
@override int get hashCode { return Object.hash(endpoint, host, lastUpdated, method, operationId, state); } 
@override String toString() { return 'TokenValidationRulesPreviewResponseResultOperations(endpoint: $endpoint, host: $host, lastUpdated: $lastUpdated, method: $method, operationId: $operationId, state: $state)'; } 
 }
