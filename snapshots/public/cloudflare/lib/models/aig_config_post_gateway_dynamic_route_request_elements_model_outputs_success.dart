// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess {const AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess({required this.elementId});

factory AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess(elementId: $elementId)'; } 
 }
