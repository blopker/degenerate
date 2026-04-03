// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsSuccess {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsSuccess({required this.elementId});

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsSuccess.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsSuccess(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsSuccess copyWith({String? elementId}) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsSuccess(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsSuccess &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsRateOutputsSuccess(elementId: $elementId)'; } 
 }
