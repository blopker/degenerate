// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_get_gateway_dynamic_route_response_result_elements_percentage_outputs_value.dart';final class AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType {const AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType._(this.value);

factory AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType.fromJson(String json) { return switch (json) {
  'percentage' => percentage,
  _ => AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType._(json),
}; }

static const AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType percentage = AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType._('percentage');

static const List<AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType> values = [percentage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType($value)'; } 
 }
final class AigConfigGetGatewayDynamicRouteResponseResultElementsPercentage {const AigConfigGetGatewayDynamicRouteResponseResultElementsPercentage({required this.id, required this.outputs, required this.type, });

factory AigConfigGetGatewayDynamicRouteResponseResultElementsPercentage.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteResponseResultElementsPercentage(
  id: json['id'] as String,
  outputs: (json['outputs'] as Map<String, dynamic>).map((k, v) => MapEntry(k, AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue.fromJson(v as Map<String, dynamic>))),
  type: AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType.fromJson(json['type'] as String),
); }

final String id;

final Map<String,AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue> outputs;

final AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.map((k, v) => MapEntry(k, v.toJson())),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('type'); } 
AigConfigGetGatewayDynamicRouteResponseResultElementsPercentage copyWith({String? id, Map<String,AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue>? outputs, AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageType? type, }) { return AigConfigGetGatewayDynamicRouteResponseResultElementsPercentage(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteResponseResultElementsPercentage &&
          id == other.id &&
          outputs == other.outputs &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, type); } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsPercentage(id: $id, outputs: $outputs, type: $type)'; } 
 }
