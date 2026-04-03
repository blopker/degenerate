// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_get_gateway_dynamic_route_version_response_result_elements_model_outputs.dart';import 'aig_config_get_gateway_dynamic_route_version_response_result_elements_model_properties.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType._(this.value);

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType.fromJson(String json) { return switch (json) {
  'model' => model,
  _ => AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType._(json),
}; }

static const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType model = AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType._('model');

static const List<AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType> values = [model];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType($value)'; } 
 }
@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModel {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModel({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModel.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModel(
  id: json['id'] as String,
  outputs: AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputs outputs;

final AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelProperties properties;

final AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType type;

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
AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModel copyWith({String? id, AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputs? outputs, AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelProperties? properties, AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelType? type, }) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModel(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModel &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModel(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
