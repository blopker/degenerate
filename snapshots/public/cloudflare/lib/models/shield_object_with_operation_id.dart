// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_uuid.dart';final class ShieldObjectWithOperationId {const ShieldObjectWithOperationId({required this.operationId});

factory ShieldObjectWithOperationId.fromJson(Map<String, dynamic> json) { return ShieldObjectWithOperationId(
  operationId: ShieldUuid.fromJson(json['operation_id'] as String),
); }

/// The ID of the operation
final ShieldUuid operationId;

Map<String, dynamic> toJson() { return {
  'operation_id': operationId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('operation_id'); } 
ShieldObjectWithOperationId copyWith({ShieldUuid? operationId}) { return ShieldObjectWithOperationId(
  operationId: operationId ?? this.operationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldObjectWithOperationId &&
          operationId == other.operationId; } 
@override int get hashCode { return operationId.hashCode; } 
@override String toString() { return 'ShieldObjectWithOperationId(operationId: $operationId)'; } 
 }
