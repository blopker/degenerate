// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_update_gateway_dynamic_route_response_route_elements_conditional_outputs.dart';import 'aig_config_update_gateway_dynamic_route_response_route_elements_conditional_properties.dart';final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType._(this.value);

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType.fromJson(String json) { return switch (json) {
  'conditional' => conditional,
  _ => AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType._(json),
}; }

static const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType conditional = AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType._('conditional');

static const List<AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType> values = [conditional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType($value)'; } 
 }
final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditional {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditional({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditional.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditional(
  id: json['id'] as String,
  outputs: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs outputs;

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties properties;

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType type;

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
AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditional copyWith({String? id, AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs? outputs, AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties? properties, AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalType? type, }) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditional(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditional &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditional(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
