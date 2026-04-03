// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_list_gateway_dynamic_routes_response_data_routes_elements_model_outputs.dart';import 'aig_config_list_gateway_dynamic_routes_response_data_routes_elements_model_properties.dart';@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType._(this.value);

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType.fromJson(String json) { return switch (json) {
  'model' => model,
  _ => AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType._(json),
}; }

static const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType model = AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType._('model');

static const List<AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType> values = [model];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType($value)'; } 
 }
@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModel {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModel({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModel.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModel(
  id: json['id'] as String,
  outputs: AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputs outputs;

final AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelProperties properties;

final AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType type;

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
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModel copyWith({String? id, AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputs? outputs, AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelProperties? properties, AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelType? type, }) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModel(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModel &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModel(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
