// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse({required this.elementId});

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse copyWith({String? elementId}) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse(elementId: $elementId)'; } 
 }
