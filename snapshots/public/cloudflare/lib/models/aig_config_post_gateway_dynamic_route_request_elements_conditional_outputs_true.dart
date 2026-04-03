// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsConditionalOutputsTrue {const AigConfigPostGatewayDynamicRouteRequestElementsConditionalOutputsTrue({required this.elementId});

factory AigConfigPostGatewayDynamicRouteRequestElementsConditionalOutputsTrue.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsConditionalOutputsTrue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteRequestElementsConditionalOutputsTrue copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteRequestElementsConditionalOutputsTrue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsConditionalOutputsTrue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsConditionalOutputsTrue(elementId: $elementId)'; } 
 }
