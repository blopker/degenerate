// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The default mitigation action used
/// Mitigation actions are as follows:
/// 
///   - `"log"` - log request when request does not conform to schema
///   - `"block"` - deny access to the site when request does not conform to schema
///   - `"none"` - skip running schema validation
/// 
@immutable final class ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction {const ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction._(this.value);

factory ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction.fromJson(String json) { return switch (json) {
  'none' => none,
  'log' => log,
  'block' => block,
  _ => ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction._(json),
}; }

static const ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction none = ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction._('none');

static const ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction log = ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction._('log');

static const ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction block = ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction._('block');

static const List<ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction> values = [none, log, block];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction($value)'; } 
 }
/// When set, this overrides both zone level and operation level mitigation actions.
/// 
///   - `"none"` - skip running schema validation entirely for the request
///   - `null` - clears any existing override
/// 
@immutable final class ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction {const ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction._(this.value);

factory ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction.fromJson(String json) { return switch (json) {
  'none' => none,
  'null' => $null,
  _ => ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction._(json),
}; }

static const ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction none = ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction._('none');

static const ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction $null = ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction._('null');

static const List<ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction> values = [none, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction($value)'; } 
 }
@immutable final class ShieldGlobalSettingChangeBase {const ShieldGlobalSettingChangeBase({this.validationDefaultMitigationAction, this.validationOverrideMitigationAction, });

factory ShieldGlobalSettingChangeBase.fromJson(Map<String, dynamic> json) { return ShieldGlobalSettingChangeBase(
  validationDefaultMitigationAction: json['validation_default_mitigation_action'] != null ? ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction.fromJson(json['validation_default_mitigation_action'] as String) : null,
  validationOverrideMitigationAction: json['validation_override_mitigation_action'] != null ? ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction.fromJson(json['validation_override_mitigation_action'] as String) : null,
); }

/// The default mitigation action used
/// Mitigation actions are as follows:
/// 
///   - `"log"` - log request when request does not conform to schema
///   - `"block"` - deny access to the site when request does not conform to schema
///   - `"none"` - skip running schema validation
/// 
final ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction? validationDefaultMitigationAction;

/// When set, this overrides both zone level and operation level mitigation actions.
/// 
///   - `"none"` - skip running schema validation entirely for the request
///   - `null` - clears any existing override
/// 
final ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction? validationOverrideMitigationAction;

Map<String, dynamic> toJson() { return {
  if (validationDefaultMitigationAction != null) 'validation_default_mitigation_action': validationDefaultMitigationAction?.toJson(),
  if (validationOverrideMitigationAction != null) 'validation_override_mitigation_action': validationOverrideMitigationAction?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'validation_default_mitigation_action', 'validation_override_mitigation_action'}.contains(key)); } 
ShieldGlobalSettingChangeBase copyWith({ShieldGlobalSettingChangeBaseValidationDefaultMitigationAction Function()? validationDefaultMitigationAction, ShieldGlobalSettingChangeBaseValidationOverrideMitigationAction? Function()? validationOverrideMitigationAction, }) { return ShieldGlobalSettingChangeBase(
  validationDefaultMitigationAction: validationDefaultMitigationAction != null ? validationDefaultMitigationAction() : this.validationDefaultMitigationAction,
  validationOverrideMitigationAction: validationOverrideMitigationAction != null ? validationOverrideMitigationAction() : this.validationOverrideMitigationAction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldGlobalSettingChangeBase &&
          validationDefaultMitigationAction == other.validationDefaultMitigationAction &&
          validationOverrideMitigationAction == other.validationOverrideMitigationAction; } 
@override int get hashCode { return Object.hash(validationDefaultMitigationAction, validationOverrideMitigationAction); } 
@override String toString() { return 'ShieldGlobalSettingChangeBase(validationDefaultMitigationAction: $validationDefaultMitigationAction, validationOverrideMitigationAction: $validationOverrideMitigationAction)'; } 
 }
