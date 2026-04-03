// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess {const AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess({required this.elementId});

factory AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess(elementId: $elementId)'; } 
 }
