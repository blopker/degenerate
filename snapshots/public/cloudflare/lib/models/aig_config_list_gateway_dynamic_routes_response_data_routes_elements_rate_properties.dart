// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType._(this.value);

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType.fromJson(String json) { return switch (json) {
  'count' => count,
  'cost' => cost,
  _ => AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType._(json),
}; }

static const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType count = AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType._('count');

static const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType cost = AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType._('cost');

static const List<AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType> values = [count, cost];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType($value)'; } 
 }
@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateProperties {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateProperties({required this.key, required this.limit, required this.limitType, required this.window, });

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateProperties.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateProperties(
  key: json['key'] as String,
  limit: (json['limit'] as num).toDouble(),
  limitType: AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType.fromJson(json['limitType'] as String),
  window: (json['window'] as num).toDouble(),
); }

final String key;

final double limit;

final AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType limitType;

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
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateProperties copyWith({String? key, double? limit, AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRatePropertiesLimitType? limitType, double? window, }) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateProperties(
  key: key ?? this.key,
  limit: limit ?? this.limit,
  limitType: limitType ?? this.limitType,
  window: window ?? this.window,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateProperties &&
          key == other.key &&
          limit == other.limit &&
          limitType == other.limitType &&
          window == other.window; } 
@override int get hashCode { return Object.hash(key, limit, limitType, window); } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateProperties(key: $key, limit: $limit, limitType: $limitType, window: $window)'; } 
 }
