// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_post_gateway_dynamic_route_deployment_response_result_elements_conditional_outputs.dart';import 'aig_config_post_gateway_dynamic_route_deployment_response_result_elements_conditional_properties.dart';final class AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType {const AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType._(this.value);

factory AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType.fromJson(String json) { return switch (json) {
  'conditional' => conditional,
  _ => AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType._(json),
}; }

static const AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType conditional = AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType._('conditional');

static const List<AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType> values = [conditional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType($value)'; } 
 }
final class AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditional {const AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditional({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditional.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditional(
  id: json['id'] as String,
  outputs: AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs outputs;

final AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalProperties properties;

final AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType type;

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
AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditional copyWith({String? id, AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs? outputs, AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalProperties? properties, AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalType? type, }) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditional(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditional &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditional(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
