// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsTrue {const AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsTrue({required this.elementId});

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsTrue.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsTrue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsTrue copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsTrue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsTrue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsTrue(elementId: $elementId)'; } 
 }
