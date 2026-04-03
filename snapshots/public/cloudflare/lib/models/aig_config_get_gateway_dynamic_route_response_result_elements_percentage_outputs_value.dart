// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue {const AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue({required this.elementId});

factory AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue copyWith({String? elementId}) { return AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsPercentageOutputsValue(elementId: $elementId)'; } 
 }
