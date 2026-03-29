// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_conditional.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_end.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_model.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_percentage.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_rate.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_start.dart';final class AigConfigPostGatewayDynamicRouteVersionRequest {const AigConfigPostGatewayDynamicRouteVersionRequest({required this.comment, required this.elements, });

factory AigConfigPostGatewayDynamicRouteVersionRequest.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionRequest(
  comment: json['comment'] as String,
  elements: (json['elements'] as List<dynamic>).map((e) => OneOf6.parse(e, fromA: (v) => AigConfigPostGatewayDynamicRouteVersionRequestElementsStart.fromJson(v as Map<String, dynamic>), fromB: (v) => AigConfigPostGatewayDynamicRouteVersionRequestElementsConditional.fromJson(v as Map<String, dynamic>), fromC: (v) => AigConfigPostGatewayDynamicRouteVersionRequestElementsPercentage.fromJson(v as Map<String, dynamic>), fromD: (v) => AigConfigPostGatewayDynamicRouteVersionRequestElementsRate.fromJson(v as Map<String, dynamic>), fromE: (v) => AigConfigPostGatewayDynamicRouteVersionRequestElementsModel.fromJson(v as Map<String, dynamic>), fromF: (v) => AigConfigPostGatewayDynamicRouteVersionRequestElementsEnd.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final String comment;

final List<AigConfigPostGatewayDynamicRouteVersionRequestElements> elements;

Map<String, dynamic> toJson() { return {
  'comment': comment,
  'elements': elements.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('comment') && json['comment'] is String &&
      json.containsKey('elements'); } 
AigConfigPostGatewayDynamicRouteVersionRequest copyWith({String? comment, List<AigConfigPostGatewayDynamicRouteVersionRequestElements>? elements, }) { return AigConfigPostGatewayDynamicRouteVersionRequest(
  comment: comment ?? this.comment,
  elements: elements ?? this.elements,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionRequest &&
          comment == other.comment &&
          listEquals(elements, other.elements); } 
@override int get hashCode { return Object.hash(comment, Object.hashAll(elements)); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequest(comment: $comment, elements: $elements)'; } 
 }
