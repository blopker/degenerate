// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_old_operation_mitigation_action.dart';/// Operation ID to mitigation action mappings
@immutable final class ShieldOldOperationSchemaValidationSettingsMultipleRequestEntry {const ShieldOldOperationSchemaValidationSettingsMultipleRequestEntry({this.mitigationAction = const Omittable.absent()});

factory ShieldOldOperationSchemaValidationSettingsMultipleRequestEntry.fromJson(Map<String, dynamic> json) { return ShieldOldOperationSchemaValidationSettingsMultipleRequestEntry(
  mitigationAction: json.containsKey('mitigation_action') ? Omittable(json['mitigation_action'] != null ? ShieldOldOperationMitigationAction.fromJson(json['mitigation_action'] as String) : null) : const Omittable.absent(),
); }

/// When set, this applies a mitigation action to this operation
/// 
///   - `log` log request when request does not conform to schema for this operation
///   - `block` deny access to the site when request does not conform to schema for this operation
///   - `none` will skip mitigation for this operation
///   - `null` indicates that no operation level mitigation is in place, see Zone Level Schema Validation Settings for mitigation action that will be applied
/// 
final Omittable<ShieldOldOperationMitigationAction?> mitigationAction;

Map<String, dynamic> toJson() { return {
  if (mitigationAction.isPresent) 'mitigation_action': mitigationAction.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mitigation_action'}.contains(key)); } 
ShieldOldOperationSchemaValidationSettingsMultipleRequestEntry copyWith({Omittable<ShieldOldOperationMitigationAction?>? mitigationAction}) { return ShieldOldOperationSchemaValidationSettingsMultipleRequestEntry(
  mitigationAction: mitigationAction ?? this.mitigationAction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOldOperationSchemaValidationSettingsMultipleRequestEntry &&
          mitigationAction == other.mitigationAction; } 
@override int get hashCode { return mitigationAction.hashCode; } 
@override String toString() { return 'ShieldOldOperationSchemaValidationSettingsMultipleRequestEntry(mitigationAction: $mitigationAction)'; } 
 }
