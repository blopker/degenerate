// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue {const AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue({required this.elementId});

factory AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsPercentageOutputsValue(elementId: $elementId)'; } 
 }
