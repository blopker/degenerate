// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigPostGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext {const AigConfigPostGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext({required this.elementId});

factory AigConfigPostGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionResponseResultElementsStartOutputsNext(elementId: $elementId)'; } 
 }
