// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_update_gateway_dynamic_route_response_route_elements_start_outputs.dart';final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType._(this.value);

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType.fromJson(String json) { return switch (json) {
  'start' => start,
  _ => AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType._(json),
}; }

static const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType start = AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType._('start');

static const List<AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType> values = [start];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType($value)'; } 
 }
final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStart {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStart({required this.id, required this.outputs, required this.type, });

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStart.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStart(
  id: json['id'] as String,
  outputs: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  type: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs outputs;

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('type'); } 
AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStart copyWith({String? id, AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs? outputs, AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartType? type, }) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStart(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStart &&
          id == other.id &&
          outputs == other.outputs &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, type); } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStart(id: $id, outputs: $outputs, type: $type)'; } 
 }
