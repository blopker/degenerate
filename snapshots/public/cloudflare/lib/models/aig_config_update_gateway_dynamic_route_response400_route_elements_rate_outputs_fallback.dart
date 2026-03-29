// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback {const AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback({required this.elementId});

factory AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback copyWith({String? elementId}) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback(elementId: $elementId)'; } 
 }
