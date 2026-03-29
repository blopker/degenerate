// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess {const AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess({required this.elementId});

factory AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess(elementId: $elementId)'; } 
 }
