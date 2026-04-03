// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_request_elements_start_outputs_next.dart';@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs {const AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs({required this.next});

factory AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs(
  next: AigConfigPostGatewayDynamicRouteRequestElementsStartOutputsNext.fromJson(json['next'] as Map<String, dynamic>),
); }

final AigConfigPostGatewayDynamicRouteRequestElementsStartOutputsNext next;

Map<String, dynamic> toJson() { return {
  'next': next.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('next'); } 
AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs copyWith({AigConfigPostGatewayDynamicRouteRequestElementsStartOutputsNext? next}) { return AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs(
  next: next ?? this.next,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs &&
          next == other.next; } 
@override int get hashCode { return next.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsStartOutputs(next: $next)'; } 
 }
