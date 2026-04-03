// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse({required this.elementId});

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse copyWith({String? elementId}) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse(elementId: $elementId)'; } 
 }
