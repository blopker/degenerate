// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputsNext {const AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputsNext({required this.elementId});

factory AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputsNext.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputsNext(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputsNext copyWith({String? elementId}) { return AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputsNext(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputsNext &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsStartOutputsNext(elementId: $elementId)'; } 
 }
