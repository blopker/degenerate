// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_conditional_outputs.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_conditional_properties.dart';@immutable final class AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType {const AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType._(this.value);

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType.fromJson(String json) { return switch (json) {
  'conditional' => conditional,
  _ => AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType._(json),
}; }

static const AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType conditional = AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType._('conditional');

static const List<AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType> values = [conditional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType($value)'; } 
 }
@immutable final class AigConfigPostGatewayDynamicRouteVersionRequestElementsConditional {const AigConfigPostGatewayDynamicRouteVersionRequestElementsConditional({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsConditional.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsConditional(
  id: json['id'] as String,
  outputs: AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputs outputs;

final AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties properties;

final AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType type;

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
AigConfigPostGatewayDynamicRouteVersionRequestElementsConditional copyWith({String? id, AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputs? outputs, AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties? properties, AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalType? type, }) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsConditional(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionRequestElementsConditional &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsConditional(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
