// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsEndOutputsValue {const AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsEndOutputsValue({required this.elementId});

factory AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsEndOutputsValue.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsEndOutputsValue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsEndOutputsValue copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsEndOutputsValue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsEndOutputsValue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsEndOutputsValue(elementId: $elementId)'; } 
 }
