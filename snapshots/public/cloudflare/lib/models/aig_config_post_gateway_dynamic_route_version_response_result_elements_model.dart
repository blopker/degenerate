// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_version_response_result_elements_model_outputs.dart';import 'aig_config_post_gateway_dynamic_route_version_response_result_elements_model_properties.dart';@immutable final class AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType {const AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType._(this.value);

factory AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType.fromJson(String json) { return switch (json) {
  'model' => model,
  _ => AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType._(json),
}; }

static const AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType model = AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType._('model');

static const List<AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType> values = [model];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType($value)'; } 
 }
@immutable final class AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModel {const AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModel({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModel.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModel(
  id: json['id'] as String,
  outputs: AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelOutputs outputs;

final AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelProperties properties;

final AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType type;

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
AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModel copyWith({String? id, AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelOutputs? outputs, AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelProperties? properties, AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModelType? type, }) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModel(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModel &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionResponseResultElementsModel(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
