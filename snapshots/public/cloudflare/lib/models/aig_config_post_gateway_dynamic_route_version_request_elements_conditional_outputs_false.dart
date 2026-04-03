// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsFalse {const AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsFalse({required this.elementId});

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsFalse.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsFalse(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsFalse copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsFalse(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsFalse &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalOutputsFalse(elementId: $elementId)'; } 
 }
