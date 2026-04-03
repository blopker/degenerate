// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_response_result_elements_percentage_outputs_value.dart';@immutable final class AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType {const AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType._(this.value);

factory AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType.fromJson(String json) { return switch (json) {
  'percentage' => percentage,
  _ => AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType._(json),
}; }

static const AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType percentage = AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType._('percentage');

static const List<AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType> values = [percentage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType($value)'; } 
 }
@immutable final class AigConfigPostGatewayDynamicRouteResponseResultElementsPercentage {const AigConfigPostGatewayDynamicRouteResponseResultElementsPercentage({required this.id, required this.outputs, required this.type, });

factory AigConfigPostGatewayDynamicRouteResponseResultElementsPercentage.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsPercentage(
  id: json['id'] as String,
  outputs: (json['outputs'] as Map<String, dynamic>).map((k, v) => MapEntry(k, AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue.fromJson(v as Map<String, dynamic>))),
  type: AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType.fromJson(json['type'] as String),
); }

final String id;

final Map<String,AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue> outputs;

final AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.map((k, v) => MapEntry(k, v.toJson())),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('type'); } 
AigConfigPostGatewayDynamicRouteResponseResultElementsPercentage copyWith({String? id, Map<String,AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue>? outputs, AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageType? type, }) { return AigConfigPostGatewayDynamicRouteResponseResultElementsPercentage(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsPercentage &&
          id == other.id &&
          outputs == other.outputs &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, type); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsPercentage(id: $id, outputs: $outputs, type: $type)'; } 
 }
