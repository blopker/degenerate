// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_response_result_elements_start_outputs_next.dart';@immutable final class AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs {const AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs({required this.next});

factory AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs(
  next: AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext.fromJson(json['next'] as Map<String, dynamic>),
); }

final AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext next;

Map<String, dynamic> toJson() { return {
  'next': next.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('next'); } 
AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs copyWith({AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext? next}) { return AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs(
  next: next ?? this.next,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs &&
          next == other.next; } 
@override int get hashCode { return next.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputs(next: $next)'; } 
 }
