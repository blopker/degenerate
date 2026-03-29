// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_post_gateway_dynamic_route_version_request_elements_percentage_outputs_value.dart';final class AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType {const AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType._(this.value);

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType.fromJson(String json) { return switch (json) {
  'percentage' => percentage,
  _ => AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType._(json),
}; }

static const AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType percentage = AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType._('percentage');

static const List<AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType> values = [percentage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType($value)'; } 
 }
final class AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentage {const AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentage({required this.id, required this.outputs, required this.type, });

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentage.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentage(
  id: json['id'] as String,
  outputs: (json['outputs'] as Map<String, dynamic>).map((k, v) => MapEntry(k, AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageOutputsValue.fromJson(v as Map<String, dynamic>))),
  type: AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType.fromJson(json['type'] as String),
); }

final String id;

final Map<String,AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageOutputsValue> outputs;

final AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.map((k, v) => MapEntry(k, v.toJson())),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('type'); } 
AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentage copyWith({String? id, Map<String,AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageOutputsValue>? outputs, AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentageType? type, }) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentage(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentage &&
          id == other.id &&
          outputs == other.outputs &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, type); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentage(id: $id, outputs: $outputs, type: $type)'; } 
 }
