// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsFallback {const AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsFallback({required this.elementId});

factory AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsFallback copyWith({String? elementId}) { return AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsRateOutputsFallback(elementId: $elementId)'; } 
 }
