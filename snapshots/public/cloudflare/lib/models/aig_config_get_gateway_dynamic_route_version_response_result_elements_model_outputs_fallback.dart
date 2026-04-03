// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsFallback {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsFallback({required this.elementId});

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsFallback copyWith({String? elementId}) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsModelOutputsFallback(elementId: $elementId)'; } 
 }
