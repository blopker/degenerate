// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_delete_gateway_dynamic_route_response_result_elements_start_outputs.dart';final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType._(this.value);

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType.fromJson(String json) { return switch (json) {
  'start' => start,
  _ => AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType._(json),
}; }

static const AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType start = AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType._('start');

static const List<AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType> values = [start];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType($value)'; } 
 }
final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsStart {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsStart({required this.id, required this.outputs, required this.type, });

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsStart.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsStart(
  id: json['id'] as String,
  outputs: AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  type: AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartOutputs outputs;

final AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('type'); } 
AigConfigDeleteGatewayDynamicRouteResponseResultElementsStart copyWith({String? id, AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartOutputs? outputs, AigConfigDeleteGatewayDynamicRouteResponseResultElementsStartType? type, }) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsStart(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsStart &&
          id == other.id &&
          outputs == other.outputs &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, type); } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsStart(id: $id, outputs: $outputs, type: $type)'; } 
 }
