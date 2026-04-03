// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_model_outputs.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_model_properties.dart';@immutable final class AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType {const AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType._(this.value);

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType.fromJson(String json) { return switch (json) {
  'model' => model,
  _ => AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType._(json),
}; }

static const AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType model = AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType._('model');

static const List<AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType> values = [model];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType($value)'; } 
 }
@immutable final class AigConfigPostGatewayDynamicRouteVersionRequestElementsModel {const AigConfigPostGatewayDynamicRouteVersionRequestElementsModel({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsModel.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsModel(
  id: json['id'] as String,
  outputs: AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigPostGatewayDynamicRouteVersionRequestElementsModelProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs outputs;

final AigConfigPostGatewayDynamicRouteVersionRequestElementsModelProperties properties;

final AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType type;

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
AigConfigPostGatewayDynamicRouteVersionRequestElementsModel copyWith({String? id, AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs? outputs, AigConfigPostGatewayDynamicRouteVersionRequestElementsModelProperties? properties, AigConfigPostGatewayDynamicRouteVersionRequestElementsModelType? type, }) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsModel(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionRequestElementsModel &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsModel(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
