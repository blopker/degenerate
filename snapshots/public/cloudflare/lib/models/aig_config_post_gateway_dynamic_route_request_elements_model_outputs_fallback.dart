// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback {const AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback({required this.elementId});

factory AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback(elementId: $elementId)'; } 
 }
