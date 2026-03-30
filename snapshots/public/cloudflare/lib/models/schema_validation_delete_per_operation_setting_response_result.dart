// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_uuid.dart';final class SchemaValidationDeletePerOperationSettingResponseResult {const SchemaValidationDeletePerOperationSettingResponseResult({this.operationId});

factory SchemaValidationDeletePerOperationSettingResponseResult.fromJson(Map<String, dynamic> json) { return SchemaValidationDeletePerOperationSettingResponseResult(
  operationId: json['operation_id'] != null ? ShieldUuid.fromJson(json['operation_id'] as String) : null,
); }

/// UUID.
final ShieldUuid? operationId;

Map<String, dynamic> toJson() { return {
  if (operationId != null) 'operation_id': operationId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'operation_id'}.contains(key)); } 
SchemaValidationDeletePerOperationSettingResponseResult copyWith({ShieldUuid Function()? operationId}) { return SchemaValidationDeletePerOperationSettingResponseResult(
  operationId: operationId != null ? operationId() : this.operationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SchemaValidationDeletePerOperationSettingResponseResult &&
          operationId == other.operationId; } 
@override int get hashCode { return operationId.hashCode; } 
@override String toString() { return 'SchemaValidationDeletePerOperationSettingResponseResult(operationId: $operationId)'; } 
 }
