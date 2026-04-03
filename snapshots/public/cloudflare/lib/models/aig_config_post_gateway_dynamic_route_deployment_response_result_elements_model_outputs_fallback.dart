// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsModelOutputsFallback {const AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsModelOutputsFallback({required this.elementId});

factory AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsModelOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsModelOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsModelOutputsFallback copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsModelOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsModelOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsModelOutputsFallback(elementId: $elementId)'; } 
 }
