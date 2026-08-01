// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The default mitigation action used when there is no mitigation action defined on the operation
/// Mitigation actions are as follows:
/// 
///   * `log` - log request when request does not conform to schema
///   * `block` - deny access to the site when request does not conform to schema
/// 
/// A special value of of `none` will skip running schema validation entirely for the request when there is no mitigation action defined on the operation
/// 
/// `null` will have no effect.
/// 
@immutable final class ShieldOldValidationDefaultMitigationActionPatch {const ShieldOldValidationDefaultMitigationActionPatch._(this.value);

factory ShieldOldValidationDefaultMitigationActionPatch.fromJson(String json) { return switch (json) {
  'none' => none,
  'log' => log,
  'block' => block,
  'null' => $null,
  _ => ShieldOldValidationDefaultMitigationActionPatch._(json),
}; }

static const ShieldOldValidationDefaultMitigationActionPatch none = ShieldOldValidationDefaultMitigationActionPatch._('none');

static const ShieldOldValidationDefaultMitigationActionPatch log = ShieldOldValidationDefaultMitigationActionPatch._('log');

static const ShieldOldValidationDefaultMitigationActionPatch block = ShieldOldValidationDefaultMitigationActionPatch._('block');

static const ShieldOldValidationDefaultMitigationActionPatch $null = ShieldOldValidationDefaultMitigationActionPatch._('null');

static const List<ShieldOldValidationDefaultMitigationActionPatch> values = [none, log, block, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldOldValidationDefaultMitigationActionPatch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldOldValidationDefaultMitigationActionPatch($value)'; } 
 }
/// When set, this overrides both zone level and operation level mitigation actions.
/// 
///   - `none` will skip running schema validation entirely for the request
/// 
/// To clear any override, use the special value `disable_override`
/// 
/// `null` will have no effect.
/// 
@immutable final class ShieldOldValidationOverrideMitigationActionPatch {const ShieldOldValidationOverrideMitigationActionPatch._(this.value);

factory ShieldOldValidationOverrideMitigationActionPatch.fromJson(String json) { return switch (json) {
  'none' => none,
  'disable_override' => disableOverride,
  'null' => $null,
  _ => ShieldOldValidationOverrideMitigationActionPatch._(json),
}; }

static const ShieldOldValidationOverrideMitigationActionPatch none = ShieldOldValidationOverrideMitigationActionPatch._('none');

static const ShieldOldValidationOverrideMitigationActionPatch disableOverride = ShieldOldValidationOverrideMitigationActionPatch._('disable_override');

static const ShieldOldValidationOverrideMitigationActionPatch $null = ShieldOldValidationOverrideMitigationActionPatch._('null');

static const List<ShieldOldValidationOverrideMitigationActionPatch> values = [none, disableOverride, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldOldValidationOverrideMitigationActionPatch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldOldValidationOverrideMitigationActionPatch($value)'; } 
 }
@immutable final class ShieldOldZoneSchemaValidationSettingsPatch {const ShieldOldZoneSchemaValidationSettingsPatch({this.validationDefaultMitigationAction = const Omittable.absent(), this.validationOverrideMitigationAction = const Omittable.absent(), });

factory ShieldOldZoneSchemaValidationSettingsPatch.fromJson(Map<String, dynamic> json) { return ShieldOldZoneSchemaValidationSettingsPatch(
  validationDefaultMitigationAction: json.containsKey('validation_default_mitigation_action') ? Omittable(json['validation_default_mitigation_action'] != null ? ShieldOldValidationDefaultMitigationActionPatch.fromJson(json['validation_default_mitigation_action'] as String) : null) : const Omittable.absent(),
  validationOverrideMitigationAction: json.containsKey('validation_override_mitigation_action') ? Omittable(json['validation_override_mitigation_action'] != null ? ShieldOldValidationOverrideMitigationActionPatch.fromJson(json['validation_override_mitigation_action'] as String) : null) : const Omittable.absent(),
); }

/// The default mitigation action used when there is no mitigation action defined on the operation
/// Mitigation actions are as follows:
/// 
///   * `log` - log request when request does not conform to schema
///   * `block` - deny access to the site when request does not conform to schema
/// 
/// A special value of of `none` will skip running schema validation entirely for the request when there is no mitigation action defined on the operation
/// 
/// `null` will have no effect.
/// 
final Omittable<ShieldOldValidationDefaultMitigationActionPatch?> validationDefaultMitigationAction;

/// When set, this overrides both zone level and operation level mitigation actions.
/// 
///   - `none` will skip running schema validation entirely for the request
/// 
/// To clear any override, use the special value `disable_override`
/// 
/// `null` will have no effect.
/// 
final Omittable<ShieldOldValidationOverrideMitigationActionPatch?> validationOverrideMitigationAction;

Map<String, dynamic> toJson() { return {
  if (validationDefaultMitigationAction.isPresent) 'validation_default_mitigation_action': validationDefaultMitigationAction.value?.toJson(),
  if (validationOverrideMitigationAction.isPresent) 'validation_override_mitigation_action': validationOverrideMitigationAction.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'validation_default_mitigation_action', 'validation_override_mitigation_action'}.contains(key)); } 
ShieldOldZoneSchemaValidationSettingsPatch copyWith({Omittable<ShieldOldValidationDefaultMitigationActionPatch?>? validationDefaultMitigationAction, Omittable<ShieldOldValidationOverrideMitigationActionPatch?>? validationOverrideMitigationAction, }) { return ShieldOldZoneSchemaValidationSettingsPatch(
  validationDefaultMitigationAction: validationDefaultMitigationAction ?? this.validationDefaultMitigationAction,
  validationOverrideMitigationAction: validationOverrideMitigationAction ?? this.validationOverrideMitigationAction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOldZoneSchemaValidationSettingsPatch &&
          validationDefaultMitigationAction == other.validationDefaultMitigationAction &&
          validationOverrideMitigationAction == other.validationOverrideMitigationAction; } 
@override int get hashCode { return Object.hash(validationDefaultMitigationAction, validationOverrideMitigationAction); } 
@override String toString() { return 'ShieldOldZoneSchemaValidationSettingsPatch(validationDefaultMitigationAction: $validationDefaultMitigationAction, validationOverrideMitigationAction: $validationOverrideMitigationAction)'; } 
 }
