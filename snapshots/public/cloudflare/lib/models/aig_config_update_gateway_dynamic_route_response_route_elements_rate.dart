// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_update_gateway_dynamic_route_response_route_elements_rate_outputs.dart';import 'aig_config_update_gateway_dynamic_route_response_route_elements_rate_properties.dart';final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType._(this.value);

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType.fromJson(String json) { return switch (json) {
  'rate' => rate,
  _ => AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType._(json),
}; }

static const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType rate = AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType._('rate');

static const List<AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType> values = [rate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType($value)'; } 
 }
final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRate {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRate({required this.id, required this.outputs, required this.properties, required this.type, });

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRate.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRate(
  id: json['id'] as String,
  outputs: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  properties: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateProperties.fromJson(json['properties'] as Map<String, dynamic>),
  type: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs outputs;

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateProperties properties;

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType type;

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
AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRate copyWith({String? id, AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs? outputs, AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateProperties? properties, AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateType? type, }) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRate(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  properties: properties ?? this.properties,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRate &&
          id == other.id &&
          outputs == other.outputs &&
          properties == other.properties &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, properties, type); } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRate(id: $id, outputs: $outputs, properties: $properties, type: $type)'; } 
 }
