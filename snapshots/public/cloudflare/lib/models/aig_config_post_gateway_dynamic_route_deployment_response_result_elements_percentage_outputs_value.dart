// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsPercentageOutputsValue {const AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsPercentageOutputsValue({required this.elementId});

factory AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsPercentageOutputsValue.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsPercentageOutputsValue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsPercentageOutputsValue copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsPercentageOutputsValue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsPercentageOutputsValue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsPercentageOutputsValue(elementId: $elementId)'; } 
 }
