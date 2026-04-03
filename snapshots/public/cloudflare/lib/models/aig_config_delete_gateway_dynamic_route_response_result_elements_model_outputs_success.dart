// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsModelOutputsSuccess {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsModelOutputsSuccess({required this.elementId});

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsModelOutputsSuccess.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsModelOutputsSuccess(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigDeleteGatewayDynamicRouteResponseResultElementsModelOutputsSuccess copyWith({String? elementId}) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsModelOutputsSuccess(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsModelOutputsSuccess &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsModelOutputsSuccess(elementId: $elementId)'; } 
 }
