// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue({required this.elementId});

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue copyWith({String? elementId}) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue(elementId: $elementId)'; } 
 }
