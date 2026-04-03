// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateOutputsFallback {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateOutputsFallback({required this.elementId});

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateOutputsFallback copyWith({String? elementId}) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsRateOutputsFallback(elementId: $elementId)'; } 
 }
