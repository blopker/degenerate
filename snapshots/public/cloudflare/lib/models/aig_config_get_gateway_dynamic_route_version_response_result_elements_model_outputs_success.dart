// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsSuccess {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsSuccess({required this.elementId});

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsSuccess.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsSuccess(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsSuccess copyWith({String? elementId}) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsSuccess(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsSuccess &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsSuccess(elementId: $elementId)'; } 
 }
