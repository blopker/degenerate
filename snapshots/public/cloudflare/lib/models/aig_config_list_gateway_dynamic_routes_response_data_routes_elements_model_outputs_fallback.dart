// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsFallback {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsFallback({required this.elementId});

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsFallback.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsFallback(
  elementId: json['elementId'] as String,
); }

final String elementId;

Map<String, dynamic> toJson() { return {
  'elementId': elementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('elementId') && json['elementId'] is String; } 
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsFallback copyWith({String? elementId}) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsFallback(
  elementId: elementId ?? this.elementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsFallback &&
          elementId == other.elementId; } 
@override int get hashCode { return elementId.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsModelOutputsFallback(elementId: $elementId)'; } 
 }
