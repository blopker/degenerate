// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsFallback {const AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsFallback({required this.elementId});

factory AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsFallback copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionResponseResultElementsRateOutputsFallback(elementId: $elementId)'; } 
 }
