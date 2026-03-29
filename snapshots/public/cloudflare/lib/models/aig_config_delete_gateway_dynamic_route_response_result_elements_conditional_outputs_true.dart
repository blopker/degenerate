// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue({required this.elementId});

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue copyWith({String? elementId}) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue(elementId: $elementId)'; } 
 }
