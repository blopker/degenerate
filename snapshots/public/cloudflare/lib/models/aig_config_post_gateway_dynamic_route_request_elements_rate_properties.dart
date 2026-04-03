// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType {const AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType._(this.value);

factory AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType.fromJson(String json) { return switch (json) {
  'count' => count,
  'cost' => cost,
  _ => AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType._(json),
}; }

static const AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType count = AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType._('count');

static const AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType cost = AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType._('cost');

static const List<AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType> values = [count, cost];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType($value)'; } 
 }
@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsRateProperties {const AigConfigPostGatewayDynamicRouteRequestElementsRateProperties({required this.key, required this.limit, required this.limitType, required this.window, });

factory AigConfigPostGatewayDynamicRouteRequestElementsRateProperties.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsRateProperties(
  key: json['key'] as String,
  limit: (json['limit'] as num).toDouble(),
  limitType: AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType.fromJson(json['limitType'] as String),
  window: (json['window'] as num).toDouble(),
); }

final String key;

final double limit;

final AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType limitType;

final double window;

Map<String, dynamic> toJson() { return {
  'key': key,
  'limit': limit,
  'limitType': limitType.toJson(),
  'window': window,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String &&
      json.containsKey('limit') && json['limit'] is num &&
      json.containsKey('limitType') &&
      json.containsKey('window') && json['window'] is num; } 
AigConfigPostGatewayDynamicRouteRequestElementsRateProperties copyWith({String? key, double? limit, AigConfigPostGatewayDynamicRouteRequestElementsRatePropertiesLimitType? limitType, double? window, }) { return AigConfigPostGatewayDynamicRouteRequestElementsRateProperties(
  key: key ?? this.key,
  limit: limit ?? this.limit,
  limitType: limitType ?? this.limitType,
  window: window ?? this.window,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsRateProperties &&
          key == other.key &&
          limit == other.limit &&
          limitType == other.limitType &&
          window == other.window; } 
@override int get hashCode { return Object.hash(key, limit, limitType, window); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsRateProperties(key: $key, limit: $limit, limitType: $limitType, window: $window)'; } 
 }
