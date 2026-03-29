// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigPostGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue {const AigConfigPostGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue({required this.elementId});

factory AigConfigPostGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue(elementId: $elementId)'; } 
 }
