// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsEndOutputsValue {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsEndOutputsValue({required this.elementId});

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsEndOutputsValue.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsEndOutputsValue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigDeleteGatewayDynamicRouteResponseResultElementsEndOutputsValue copyWith({String? elementId}) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsEndOutputsValue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsEndOutputsValue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsEndOutputsValue(elementId: $elementId)'; } 
 }
