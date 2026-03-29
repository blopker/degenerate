// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext({required this.elementId});

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext copyWith({String? elementId}) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsStartOutputsNext(elementId: $elementId)'; } 
 }
