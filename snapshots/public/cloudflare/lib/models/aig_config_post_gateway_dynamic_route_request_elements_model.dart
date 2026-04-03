// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_request_elements_model_outputs.dart';import 'aig_config_post_gateway_dynamic_route_request_elements_model_properties.dart';@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsModelType {const AigConfigPostGatewayDynamicRouteRequestElementsModelType._(this.value);

factory AigConfigPostGatewayDynamicRouteRequestElementsModelType.fromJson(String json) { return switch (json) {
  'model' => model,
  _ => AigConfigPostGatewayDynamicRouteRequestElementsModelType._(json),
}; }

static const AigConfigPostGatewayDynamicRouteRequestElementsModelType model = AigConfigPostGatewayDynamicRouteRequestElementsModelType._('model');

static const List<AigConfigPostGatewayDynamicRouteRequestElementsModelType> values = [model];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigPostGatewayDynamicRouteRequestElementsModelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsModelType($value)'; } 
 }
@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsModel {const AigConfigPostGatewayDynamicRouteRequestElementsModel({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigPostGatewayDynamicRouteRequestElementsModel.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsModel(
  id: json['id'] as String,
  outputs: AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigPostGatewayDynamicRouteRequestElementsModelProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigPostGatewayDynamicRouteRequestElementsModelType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs outputs;

final AigConfigPostGatewayDynamicRouteRequestElementsModelProperties properties;

final AigConfigPostGatewayDynamicRouteRequestElementsModelType type;

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
AigConfigPostGatewayDynamicRouteRequestElementsModel copyWith({String? id, AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs? outputs, AigConfigPostGatewayDynamicRouteRequestElementsModelProperties? properties, AigConfigPostGatewayDynamicRouteRequestElementsModelType? type, }) { return AigConfigPostGatewayDynamicRouteRequestElementsModel(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsModel &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsModel(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
