// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_get_gateway_dynamic_route_response_result_elements_start_outputs.dart';final class AigConfigGetGatewayDynamicRouteResponseResultElementsStartType {const AigConfigGetGatewayDynamicRouteResponseResultElementsStartType._(this.value);

factory AigConfigGetGatewayDynamicRouteResponseResultElementsStartType.fromJson(String json) { return switch (json) {
  'start' => start,
  _ => AigConfigGetGatewayDynamicRouteResponseResultElementsStartType._(json),
}; }

static const AigConfigGetGatewayDynamicRouteResponseResultElementsStartType start = AigConfigGetGatewayDynamicRouteResponseResultElementsStartType._('start');

static const List<AigConfigGetGatewayDynamicRouteResponseResultElementsStartType> values = [start];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigGetGatewayDynamicRouteResponseResultElementsStartType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsStartType($value)'; } 
 }
final class AigConfigGetGatewayDynamicRouteResponseResultElementsStart {const AigConfigGetGatewayDynamicRouteResponseResultElementsStart({required this.id, required this.outputs, required this.type, });

factory AigConfigGetGatewayDynamicRouteResponseResultElementsStart.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteResponseResultElementsStart(
  id: json['id'] as String,
  outputs: AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  type: AigConfigGetGatewayDynamicRouteResponseResultElementsStartType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputs outputs;

final AigConfigGetGatewayDynamicRouteResponseResultElementsStartType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('type'); } 
AigConfigGetGatewayDynamicRouteResponseResultElementsStart copyWith({String? id, AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputs? outputs, AigConfigGetGatewayDynamicRouteResponseResultElementsStartType? type, }) { return AigConfigGetGatewayDynamicRouteResponseResultElementsStart(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteResponseResultElementsStart &&
          id == other.id &&
          outputs == other.outputs &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, type); } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsStart(id: $id, outputs: $outputs, type: $type)'; } 
 }
