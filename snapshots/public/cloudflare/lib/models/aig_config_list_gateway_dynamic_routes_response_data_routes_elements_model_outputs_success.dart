// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsSuccess {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsSuccess({required this.elementId});

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsSuccess.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsSuccess(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsSuccess copyWith({String? elementId}) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsSuccess(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsSuccess &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsSuccess(elementId: $elementId)'; } 
 }
