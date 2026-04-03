// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse({required this.elementId});

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse copyWith({String? elementId}) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse(elementId: $elementId)'; } 
 }
