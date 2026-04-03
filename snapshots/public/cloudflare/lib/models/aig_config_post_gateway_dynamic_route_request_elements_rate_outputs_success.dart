// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess {const AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess({required this.elementId});

factory AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess(elementId: $elementId)'; } 
 }
