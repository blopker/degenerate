// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_response_result_elements_start_outputs.dart';@immutable final class AigConfigPostGatewayDynamicRouteResponseResultElementsStartType {const AigConfigPostGatewayDynamicRouteResponseResultElementsStartType._(this.value);

factory AigConfigPostGatewayDynamicRouteResponseResultElementsStartType.fromJson(String json) { return switch (json) {
  'start' => start,
  _ => AigConfigPostGatewayDynamicRouteResponseResultElementsStartType._(json),
}; }

static const AigConfigPostGatewayDynamicRouteResponseResultElementsStartType start = AigConfigPostGatewayDynamicRouteResponseResultElementsStartType._('start');

static const List<AigConfigPostGatewayDynamicRouteResponseResultElementsStartType> values = [start];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigPostGatewayDynamicRouteResponseResultElementsStartType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsStartType($value)'; } 
 }
@immutable final class AigConfigPostGatewayDynamicRouteResponseResultElementsStart {const AigConfigPostGatewayDynamicRouteResponseResultElementsStart({required this.id, required this.outputs, required this.type, });

factory AigConfigPostGatewayDynamicRouteResponseResultElementsStart.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsStart(
  id: json['id'] as String,
  outputs: AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  type: AigConfigPostGatewayDynamicRouteResponseResultElementsStartType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs outputs;

final AigConfigPostGatewayDynamicRouteResponseResultElementsStartType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('type'); } 
AigConfigPostGatewayDynamicRouteResponseResultElementsStart copyWith({String? id, AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs? outputs, AigConfigPostGatewayDynamicRouteResponseResultElementsStartType? type, }) { return AigConfigPostGatewayDynamicRouteResponseResultElementsStart(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsStart &&
          id == other.id &&
          outputs == other.outputs &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, type); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsStart(id: $id, outputs: $outputs, type: $type)'; } 
 }
