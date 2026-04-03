// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse({required this.elementId});

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse copyWith({String? elementId}) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse(elementId: $elementId)'; } 
 }
