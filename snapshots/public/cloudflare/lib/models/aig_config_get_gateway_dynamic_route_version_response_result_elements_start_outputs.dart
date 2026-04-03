// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_get_gateway_dynamic_route_version_response_result_elements_start_outputs_next.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputs {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputs({required this.next});

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputs.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputs(
  next: AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext.fromJson(json['next'] as Map<String, dynamic>),
); }

final AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext next;

Map<String, dynamic> toJson() { return {
  'next': next.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('next'); } 
AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputs copyWith({AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext? next}) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputs(
  next: next ?? this.next,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputs &&
          next == other.next; } 
@override int get hashCode { return next.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsStartOutputs(next: $next)'; } 
 }
