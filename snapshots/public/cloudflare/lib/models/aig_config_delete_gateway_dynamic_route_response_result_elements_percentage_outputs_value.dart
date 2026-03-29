// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsPercentageOutputsValue {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsPercentageOutputsValue({required this.elementId});

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsPercentageOutputsValue.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsPercentageOutputsValue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigDeleteGatewayDynamicRouteResponseResultElementsPercentageOutputsValue copyWith({String? elementId}) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsPercentageOutputsValue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsPercentageOutputsValue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsPercentageOutputsValue(elementId: $elementId)'; } 
 }
