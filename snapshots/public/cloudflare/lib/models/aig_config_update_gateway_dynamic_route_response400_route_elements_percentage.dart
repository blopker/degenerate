// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_dynamic_route_response400_route_elements_percentage_outputs_value.dart';@immutable final class AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType {const AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType._(this.value);

factory AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType.fromJson(String json) { return switch (json) {
  'percentage' => percentage,
  _ => AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType._(json),
}; }

static const AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType percentage = AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType._('percentage');

static const List<AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType> values = [percentage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType($value)'; } 
 }
@immutable final class AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentage {const AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentage({required this.id, required this.outputs, required this.type, });

factory AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentage.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentage(
  id: json['id'] as String,
  outputs: (json['outputs'] as Map<String, dynamic>).map((k, v) => MapEntry(k, AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageOutputsValue.fromJson(v as Map<String, dynamic>))),
  type: AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType.fromJson(json['type'] as String),
); }

final String id;

final Map<String,AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageOutputsValue> outputs;

final AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.map((k, v) => MapEntry(k, v.toJson())),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('type'); } 
AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentage copyWith({String? id, Map<String,AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageOutputsValue>? outputs, AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentageType? type, }) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentage(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentage &&
          id == other.id &&
          outputs == other.outputs &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, type); } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsPercentage(id: $id, outputs: $outputs, type: $type)'; } 
 }
