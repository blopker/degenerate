// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_get_gateway_dynamic_route_version_response_result_elements_rate_outputs.dart';import 'aig_config_get_gateway_dynamic_route_version_response_result_elements_rate_properties.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType._(this.value);

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType.fromJson(String json) { return switch (json) {
  'rate' => rate,
  _ => AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType._(json),
}; }

static const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType rate = AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType._('rate');

static const List<AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType> values = [rate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType($value)'; } 
 }
@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRate {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRate({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRate.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRate(
  id: json['id'] as String,
  outputs: AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputs outputs;

final AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateProperties properties;

final AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType type;

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
AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRate copyWith({String? id, AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputs? outputs, AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateProperties? properties, AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateType? type, }) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRate(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRate &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRate(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
