// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsModelOutputsFallback {const AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsModelOutputsFallback({required this.elementId});

factory AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsModelOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsModelOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsModelOutputsFallback copyWith({String? elementId}) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsModelOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsModelOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsModelOutputsFallback(elementId: $elementId)'; } 
 }
