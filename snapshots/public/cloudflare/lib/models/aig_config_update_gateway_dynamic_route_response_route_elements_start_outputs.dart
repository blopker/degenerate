// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_dynamic_route_response_route_elements_start_outputs_next.dart';@immutable final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs({required this.next});

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs(
  next: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext.fromJson(json['next'] as Map<String, dynamic>),
); }

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext next;

Map<String, dynamic> toJson() { return {
  'next': next.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('next'); } 
AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs copyWith({AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext? next}) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs(
  next: next ?? this.next,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs &&
          next == other.next; } 
@override int get hashCode { return next.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputs(next: $next)'; } 
 }
