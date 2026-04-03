// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsRateOutputsFallback {const AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsRateOutputsFallback({required this.elementId});

factory AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsRateOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsRateOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsRateOutputsFallback copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsRateOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsRateOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsRateOutputsFallback(elementId: $elementId)'; } 
 }
