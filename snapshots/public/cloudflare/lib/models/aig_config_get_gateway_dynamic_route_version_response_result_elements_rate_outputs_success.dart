// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess({required this.elementId});

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess copyWith({String? elementId}) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsRateOutputsSuccess(elementId: $elementId)'; } 
 }
