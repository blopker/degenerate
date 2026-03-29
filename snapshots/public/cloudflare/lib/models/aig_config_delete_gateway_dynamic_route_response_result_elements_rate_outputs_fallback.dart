// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsFallback {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsFallback({required this.elementId});

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsFallback copyWith({String? elementId}) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsFallback(elementId: $elementId)'; } 
 }
