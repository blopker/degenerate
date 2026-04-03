// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue({required this.elementId});

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue copyWith({String? elementId}) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue(elementId: $elementId)'; } 
 }
