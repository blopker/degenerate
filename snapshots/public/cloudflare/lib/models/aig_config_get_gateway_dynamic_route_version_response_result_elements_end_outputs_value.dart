// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsEndOutputsValue {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsEndOutputsValue({required this.elementId});

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsEndOutputsValue.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsEndOutputsValue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigGetGatewayDynamicRouteVersionResponseResultElementsEndOutputsValue copyWith({String? elementId}) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsEndOutputsValue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsEndOutputsValue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsEndOutputsValue(elementId: $elementId)'; } 
 }
