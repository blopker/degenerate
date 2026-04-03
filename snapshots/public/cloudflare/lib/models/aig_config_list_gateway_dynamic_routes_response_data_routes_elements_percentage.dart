// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_list_gateway_dynamic_routes_response_data_routes_elements_percentage_outputs_value.dart';@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType._(this.value);

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType.fromJson(String json) { return switch (json) {
  'percentage' => percentage,
  _ => AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType._(json),
}; }

static const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType percentage = AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType._('percentage');

static const List<AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType> values = [percentage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType($value)'; } 
 }
@immutable final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentage {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentage({required this.id, required this.outputs, required this.type, });

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentage.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentage(
  id: json['id'] as String,
  outputs: (json['outputs'] as Map<String, dynamic>).map((k, v) => MapEntry(k, AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue.fromJson(v as Map<String, dynamic>))),
  type: AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType.fromJson(json['type'] as String),
); }

final String id;

final Map<String,AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue> outputs;

final AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType type;

Map<String, dynamic> toJson() { return {
  'id': id,
  'outputs': outputs.map((k, v) => MapEntry(k, v.toJson())),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('outputs') &&
      json.containsKey('type'); } 
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentage copyWith({String? id, Map<String,AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageOutputsValue>? outputs, AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentageType? type, }) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentage(
  id: id ?? this.id,
  outputs: outputs ?? this.outputs,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentage &&
          id == other.id &&
          outputs == other.outputs &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, outputs, type); } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsPercentage(id: $id, outputs: $outputs, type: $type)'; } 
 }
