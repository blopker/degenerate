// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_old_validation_default_mitigation_action.dart';/// When set, this overrides both zone level and operation level mitigation actions.
/// 
///   - `none` will skip running schema validation entirely for the request
///   - `null` indicates that no override is in place
/// 
/// To clear any override, use the special value `disable_override` or `null`
/// 
@immutable final class ShieldOldValidationOverrideMitigationActionWrite {const ShieldOldValidationOverrideMitigationActionWrite._(this.value);

factory ShieldOldValidationOverrideMitigationActionWrite.fromJson(String json) { return switch (json) {
  'none' => none,
  'disable_override' => disableOverride,
  'null' => $null,
  _ => ShieldOldValidationOverrideMitigationActionWrite._(json),
}; }

static const ShieldOldValidationOverrideMitigationActionWrite none = ShieldOldValidationOverrideMitigationActionWrite._('none');

static const ShieldOldValidationOverrideMitigationActionWrite disableOverride = ShieldOldValidationOverrideMitigationActionWrite._('disable_override');

static const ShieldOldValidationOverrideMitigationActionWrite $null = ShieldOldValidationOverrideMitigationActionWrite._('null');

static const List<ShieldOldValidationOverrideMitigationActionWrite> values = [none, disableOverride, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldOldValidationOverrideMitigationActionWrite && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldOldValidationOverrideMitigationActionWrite($value)'; } 
 }
@immutable final class ShieldOldZoneSchemaValidationSettingsPut {const ShieldOldZoneSchemaValidationSettingsPut({required this.validationDefaultMitigationAction, this.validationOverrideMitigationAction, });

factory ShieldOldZoneSchemaValidationSettingsPut.fromJson(Map<String, dynamic> json) { return ShieldOldZoneSchemaValidationSettingsPut(
  validationDefaultMitigationAction: ShieldOldValidationDefaultMitigationAction.fromJson(json['validation_default_mitigation_action'] as String),
  validationOverrideMitigationAction: json['validation_override_mitigation_action'] != null ? ShieldOldValidationOverrideMitigationActionWrite.fromJson(json['validation_override_mitigation_action'] as String) : null,
); }

/// The default mitigation action used when there is no mitigation action defined on the operation
/// 
/// Mitigation actions are as follows:
/// 
///   * `log` - log request when request does not conform to schema
///   * `block` - deny access to the site when request does not conform to schema
/// 
/// A special value of of `none` will skip running schema validation entirely for the request when there is no mitigation action defined on the operation
/// 
final ShieldOldValidationDefaultMitigationAction validationDefaultMitigationAction;

/// When set, this overrides both zone level and operation level mitigation actions.
/// 
///   - `none` will skip running schema validation entirely for the request
///   - `null` indicates that no override is in place
/// 
/// To clear any override, use the special value `disable_override` or `null`
/// 
final ShieldOldValidationOverrideMitigationActionWrite? validationOverrideMitigationAction;

Map<String, dynamic> toJson() { return {
  'validation_default_mitigation_action': validationDefaultMitigationAction.toJson(),
  if (validationOverrideMitigationAction != null) 'validation_override_mitigation_action': validationOverrideMitigationAction?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('validation_default_mitigation_action'); } 
ShieldOldZoneSchemaValidationSettingsPut copyWith({ShieldOldValidationDefaultMitigationAction? validationDefaultMitigationAction, ShieldOldValidationOverrideMitigationActionWrite? Function()? validationOverrideMitigationAction, }) { return ShieldOldZoneSchemaValidationSettingsPut(
  validationDefaultMitigationAction: validationDefaultMitigationAction ?? this.validationDefaultMitigationAction,
  validationOverrideMitigationAction: validationOverrideMitigationAction != null ? validationOverrideMitigationAction() : this.validationOverrideMitigationAction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOldZoneSchemaValidationSettingsPut &&
          validationDefaultMitigationAction == other.validationDefaultMitigationAction &&
          validationOverrideMitigationAction == other.validationOverrideMitigationAction; } 
@override int get hashCode { return Object.hash(validationDefaultMitigationAction, validationOverrideMitigationAction); } 
@override String toString() { return 'ShieldOldZoneSchemaValidationSettingsPut(validationDefaultMitigationAction: $validationDefaultMitigationAction, validationOverrideMitigationAction: $validationOverrideMitigationAction)'; } 
 }
