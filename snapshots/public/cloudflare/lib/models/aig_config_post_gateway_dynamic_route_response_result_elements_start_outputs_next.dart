// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext {const AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext({required this.elementId});

factory AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsStartOutputsNext(elementId: $elementId)'; } 
 }
