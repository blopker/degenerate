// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_list_gateway_dynamic_routes_response_data_routes_elements_conditional_outputs.dart';import 'aig_config_list_gateway_dynamic_routes_response_data_routes_elements_conditional_properties.dart';@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType._(this.value);

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType.fromJson(String json) { return switch (json) {
  'conditional' => conditional,
  _ => AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType._(json),
}; }

static const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType conditional = AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType._('conditional');

static const List<AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType> values = [conditional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType($value)'; } 
 }
@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditional {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditional({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditional.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditional(
  id: json['id'] as String,
  outputs: AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs outputs;

final AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties properties;

final AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType type;

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
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditional copyWith({String? id, AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs? outputs, AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties? properties, AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalType? type, }) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditional(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditional &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditional(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
