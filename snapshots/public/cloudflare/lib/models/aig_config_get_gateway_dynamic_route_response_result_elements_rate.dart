// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_get_gateway_dynamic_route_response_result_elements_rate_outputs.dart';import 'aig_config_get_gateway_dynamic_route_response_result_elements_rate_properties.dart';@immutable final class AigConfigGetGatewayDynamicRouteResponseResultElementsRateType {const AigConfigGetGatewayDynamicRouteResponseResultElementsRateType._(this.value);

factory AigConfigGetGatewayDynamicRouteResponseResultElementsRateType.fromJson(String json) { return switch (json) {
  'rate' => rate,
  _ => AigConfigGetGatewayDynamicRouteResponseResultElementsRateType._(json),
}; }

static const AigConfigGetGatewayDynamicRouteResponseResultElementsRateType rate = AigConfigGetGatewayDynamicRouteResponseResultElementsRateType._('rate');

static const List<AigConfigGetGatewayDynamicRouteResponseResultElementsRateType> values = [rate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigGetGatewayDynamicRouteResponseResultElementsRateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsRateType($value)'; } 
 }
@immutable final class AigConfigGetGatewayDynamicRouteResponseResultElementsRate {const AigConfigGetGatewayDynamicRouteResponseResultElementsRate({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigGetGatewayDynamicRouteResponseResultElementsRate.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteResponseResultElementsRate(
  id: json['id'] as String,
  outputs: AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigGetGatewayDynamicRouteResponseResultElementsRateProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigGetGatewayDynamicRouteResponseResultElementsRateType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs outputs;

final AigConfigGetGatewayDynamicRouteResponseResultElementsRateProperties properties;

final AigConfigGetGatewayDynamicRouteResponseResultElementsRateType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.toJson(),
  'properties': properties.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('properties') &&
      json.containsKey('type'); } 
AigConfigGetGatewayDynamicRouteResponseResultElementsRate copyWith({String? id, AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs? outputs, AigConfigGetGatewayDynamicRouteResponseResultElementsRateProperties? properties, AigConfigGetGatewayDynamicRouteResponseResultElementsRateType? type, }) { return AigConfigGetGatewayDynamicRouteResponseResultElementsRate(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteResponseResultElementsRate &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsRate(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
