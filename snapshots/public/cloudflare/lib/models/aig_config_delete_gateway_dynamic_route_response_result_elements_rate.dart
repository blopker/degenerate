// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_delete_gateway_dynamic_route_response_result_elements_rate_outputs.dart';import 'aig_config_delete_gateway_dynamic_route_response_result_elements_rate_properties.dart';@immutable final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType._(this.value);

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType.fromJson(String json) { return switch (json) {
  'rate' => rate,
  _ => AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType._(json),
}; }

static const AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType rate = AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType._('rate');

static const List<AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType> values = [rate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType($value)'; } 
 }
@immutable final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsRate {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsRate({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsRate.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsRate(
  id: json['id'] as String,
  outputs: AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputs outputs;

final AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateProperties properties;

final AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType type;

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
AigConfigDeleteGatewayDynamicRouteResponseResultElementsRate copyWith({String? id, AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputs? outputs, AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateProperties? properties, AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateType? type, }) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsRate(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsRate &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsRate(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
