// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_old_operation_mitigation_action.dart';import 'shield_uuid.dart';final class ShieldOldOperationSchemaValidationSettings {const ShieldOldOperationSchemaValidationSettings({this.mitigationAction, this.operationId, });

factory ShieldOldOperationSchemaValidationSettings.fromJson(Map<String, dynamic> json) { return ShieldOldOperationSchemaValidationSettings(
  mitigationAction: json['mitigation_action'] != null ? ShieldOldOperationMitigationAction.fromJson(json['mitigation_action'] as String) : null,
  operationId: json['operation_id'] != null ? ShieldUuid.fromJson(json['operation_id'] as String) : null,
); }

/// When set, this applies a mitigation action to this operation
/// 
///   - `log` log request when request does not conform to schema for this operation
///   - `block` deny access to the site when request does not conform to schema for this operation
///   - `none` will skip mitigation for this operation
///   - `null` indicates that no operation level mitigation is in place, see Zone Level Schema Validation Settings for mitigation action that will be applied
/// 
final ShieldOldOperationMitigationAction? mitigationAction;

final ShieldUuid? operationId;

Map<String, dynamic> toJson() { return {
  if (mitigationAction != null) 'mitigation_action': mitigationAction?.toJson(),
  if (operationId != null) 'operation_id': operationId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ShieldOldOperationSchemaValidationSettings copyWith({ShieldOldOperationMitigationAction? Function()? mitigationAction, ShieldUuid Function()? operationId, }) { return ShieldOldOperationSchemaValidationSettings(
  mitigationAction: mitigationAction != null ? mitigationAction() : this.mitigationAction,
  operationId: operationId != null ? operationId() : this.operationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOldOperationSchemaValidationSettings &&
          mitigationAction == other.mitigationAction &&
          operationId == other.operationId; } 
@override int get hashCode { return Object.hash(mitigationAction, operationId); } 
@override String toString() { return 'ShieldOldOperationSchemaValidationSettings(mitigationAction: $mitigationAction, operationId: $operationId)'; } 
 }
