// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigPostGatewayDynamicRouteResponseResultElementsEndOutputsValue {const AigConfigPostGatewayDynamicRouteResponseResultElementsEndOutputsValue({required this.elementId});

factory AigConfigPostGatewayDynamicRouteResponseResultElementsEndOutputsValue.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsEndOutputsValue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteResponseResultElementsEndOutputsValue copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteResponseResultElementsEndOutputsValue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsEndOutputsValue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsEndOutputsValue(elementId: $elementId)'; } 
 }
