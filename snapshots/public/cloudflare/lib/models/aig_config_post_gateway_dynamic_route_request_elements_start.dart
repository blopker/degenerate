// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_request_elements_start_outputs.dart';@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsStartType {const AigConfigPostGatewayDynamicRouteRequestElementsStartType._(this.value);

factory AigConfigPostGatewayDynamicRouteRequestElementsStartType.fromJson(String json) { return switch (json) {
  'start' => start,
  _ => AigConfigPostGatewayDynamicRouteRequestElementsStartType._(json),
}; }

static const AigConfigPostGatewayDynamicRouteRequestElementsStartType start = AigConfigPostGatewayDynamicRouteRequestElementsStartType._('start');

static const List<AigConfigPostGatewayDynamicRouteRequestElementsStartType> values = [start];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigPostGatewayDynamicRouteRequestElementsStartType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsStartType($value)'; } 
 }
@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsStart {const AigConfigPostGatewayDynamicRouteRequestElementsStart({required this.id, required this.outputs, required this.type, });

factory AigConfigPostGatewayDynamicRouteRequestElementsStart.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsStart(
  id: json['id'] as String,
  outputs: AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs.fromJson(json['outputs'] as Map<String, dynamic>),
  type: AigConfigPostGatewayDynamicRouteRequestElementsStartType.fromJson(json['type'] as String),
); }

final String id;

final AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs outputs;

final AigConfigPostGatewayDynamicRouteRequestElementsStartType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('type'); } 
AigConfigPostGatewayDynamicRouteRequestElementsStart copyWith({String? id, AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs? outputs, AigConfigPostGatewayDynamicRouteRequestElementsStartType? type, }) { return AigConfigPostGatewayDynamicRouteRequestElementsStart(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsStart &&
          id == other.id &&
          outputs == other.outputs &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, type); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsStart(id: $id, outputs: $outputs, type: $type)'; } 
 }
