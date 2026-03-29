// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_get_gateway_dynamic_route_response_result_elements_model_outputs.dart';import 'aig_config_get_gateway_dynamic_route_response_result_elements_model_properties.dart';final class AigConfigGetGatewayDynamicRouteResponseResultElementsModelType {const AigConfigGetGatewayDynamicRouteResponseResultElementsModelType._(this.value);

factory AigConfigGetGatewayDynamicRouteResponseResultElementsModelType.fromJson(String json) { return switch (json) {
  'model' => model,
  _ => AigConfigGetGatewayDynamicRouteResponseResultElementsModelType._(json),
}; }

static const AigConfigGetGatewayDynamicRouteResponseResultElementsModelType model = AigConfigGetGatewayDynamicRouteResponseResultElementsModelType._('model');

static const List<AigConfigGetGatewayDynamicRouteResponseResultElementsModelType> values = [model];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigGetGatewayDynamicRouteResponseResultElementsModelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsModelType($value)'; } 
 }
final class AigConfigGetGatewayDynamicRouteResponseResultElementsModel {const AigConfigGetGatewayDynamicRouteResponseResultElementsModel({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigGetGatewayDynamicRouteResponseResultElementsModel.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteResponseResultElementsModel(
  id: json['id'] as String,
  outputs: AigConfigGetGatewayDynamicRouteResponseResultElementsModelOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigGetGatewayDynamicRouteResponseResultElementsModelProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigGetGatewayDynamicRouteResponseResultElementsModelType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigGetGatewayDynamicRouteResponseResultElementsModelOutputs outputs;

final AigConfigGetGatewayDynamicRouteResponseResultElementsModelProperties properties;

final AigConfigGetGatewayDynamicRouteResponseResultElementsModelType type;

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
AigConfigGetGatewayDynamicRouteResponseResultElementsModel copyWith({String? id, AigConfigGetGatewayDynamicRouteResponseResultElementsModelOutputs? outputs, AigConfigGetGatewayDynamicRouteResponseResultElementsModelProperties? properties, AigConfigGetGatewayDynamicRouteResponseResultElementsModelType? type, }) { return AigConfigGetGatewayDynamicRouteResponseResultElementsModel(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteResponseResultElementsModel &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsModel(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
