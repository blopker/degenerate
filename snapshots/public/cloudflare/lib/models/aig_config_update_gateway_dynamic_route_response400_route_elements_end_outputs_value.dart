// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsEndOutputsValue {const AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsEndOutputsValue({required this.elementId});

factory AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsEndOutputsValue.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsEndOutputsValue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsEndOutputsValue copyWith({String? elementId}) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsEndOutputsValue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsEndOutputsValue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsEndOutputsValue(elementId: $elementId)'; } 
 }
