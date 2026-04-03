// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_dynamic_route_response400_route_elements_start_outputs_next.dart';@immutable final class AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputs {const AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputs({required this.next});

factory AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputs.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputs(
  next: AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputsNext.fromJson(json['next'] as Map<String, dynamic>),
); }

final AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputsNext next;

Map<String, dynamic> toJson() { return {
  'next': next.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('next'); } 
AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputs copyWith({AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputsNext? next}) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputs(
  next: next ?? this.next,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputs &&
          next == other.next; } 
@override int get hashCode { return next.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsStartOutputs(next: $next)'; } 
 }
