// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsSuccess {const AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsSuccess({required this.elementId});

factory AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsSuccess.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsSuccess(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsSuccess copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsSuccess(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsSuccess &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsSuccess(elementId: $elementId)'; } 
 }
