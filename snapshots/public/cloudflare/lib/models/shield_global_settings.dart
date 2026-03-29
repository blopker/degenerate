// GENERATED CODE - DO NOT MODIFY BY HAND

/// The default mitigation action used
/// 
/// Mitigation actions are as follows:
/// 
///   - `log` - log request when request does not conform to schema
///   - `block` - deny access to the site when request does not conform to schema
///   - `none` - skip running schema validation
/// 
final class ShieldGlobalSettingsValidationDefaultMitigationAction {const ShieldGlobalSettingsValidationDefaultMitigationAction._(this.value);

factory ShieldGlobalSettingsValidationDefaultMitigationAction.fromJson(String json) { return switch (json) {
  'none' => none,
  'log' => log,
  'block' => block,
  _ => ShieldGlobalSettingsValidationDefaultMitigationAction._(json),
}; }

static const ShieldGlobalSettingsValidationDefaultMitigationAction none = ShieldGlobalSettingsValidationDefaultMitigationAction._('none');

static const ShieldGlobalSettingsValidationDefaultMitigationAction log = ShieldGlobalSettingsValidationDefaultMitigationAction._('log');

static const ShieldGlobalSettingsValidationDefaultMitigationAction block = ShieldGlobalSettingsValidationDefaultMitigationAction._('block');

static const List<ShieldGlobalSettingsValidationDefaultMitigationAction> values = [none, log, block];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldGlobalSettingsValidationDefaultMitigationAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldGlobalSettingsValidationDefaultMitigationAction($value)'; } 
 }
/// When not null, this overrides global both zone level and operation level mitigation actions. This can serve as a quick way to disable schema validation for the whole zone.
/// 
///   - `"none"` will skip running schema validation entirely for the request
/// 
final class ShieldGlobalSettingsValidationOverrideMitigationAction {const ShieldGlobalSettingsValidationOverrideMitigationAction._(this.value);

factory ShieldGlobalSettingsValidationOverrideMitigationAction.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => ShieldGlobalSettingsValidationOverrideMitigationAction._(json),
}; }

static const ShieldGlobalSettingsValidationOverrideMitigationAction none = ShieldGlobalSettingsValidationOverrideMitigationAction._('none');

static const List<ShieldGlobalSettingsValidationOverrideMitigationAction> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldGlobalSettingsValidationOverrideMitigationAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldGlobalSettingsValidationOverrideMitigationAction($value)'; } 
 }
final class ShieldGlobalSettings {const ShieldGlobalSettings({required this.validationDefaultMitigationAction, this.validationOverrideMitigationAction, });

factory ShieldGlobalSettings.fromJson(Map<String, dynamic> json) { return ShieldGlobalSettings(
  validationDefaultMitigationAction: ShieldGlobalSettingsValidationDefaultMitigationAction.fromJson(json['validation_default_mitigation_action'] as String),
  validationOverrideMitigationAction: json['validation_override_mitigation_action'] != null ? ShieldGlobalSettingsValidationOverrideMitigationAction.fromJson(json['validation_override_mitigation_action'] as String) : null,
); }

/// The default mitigation action used
/// 
/// Mitigation actions are as follows:
/// 
///   - `log` - log request when request does not conform to schema
///   - `block` - deny access to the site when request does not conform to schema
///   - `none` - skip running schema validation
/// 
final ShieldGlobalSettingsValidationDefaultMitigationAction validationDefaultMitigationAction;

/// When not null, this overrides global both zone level and operation level mitigation actions. This can serve as a quick way to disable schema validation for the whole zone.
/// 
///   - `"none"` will skip running schema validation entirely for the request
/// 
final ShieldGlobalSettingsValidationOverrideMitigationAction? validationOverrideMitigationAction;

Map<String, dynamic> toJson() { return {
  'validation_default_mitigation_action': validationDefaultMitigationAction.toJson(),
  if (validationOverrideMitigationAction != null) 'validation_override_mitigation_action': validationOverrideMitigationAction?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('validation_default_mitigation_action'); } 
ShieldGlobalSettings copyWith({ShieldGlobalSettingsValidationDefaultMitigationAction? validationDefaultMitigationAction, ShieldGlobalSettingsValidationOverrideMitigationAction Function()? validationOverrideMitigationAction, }) { return ShieldGlobalSettings(
  validationDefaultMitigationAction: validationDefaultMitigationAction ?? this.validationDefaultMitigationAction,
  validationOverrideMitigationAction: validationOverrideMitigationAction != null ? validationOverrideMitigationAction() : this.validationOverrideMitigationAction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldGlobalSettings &&
          validationDefaultMitigationAction == other.validationDefaultMitigationAction &&
          validationOverrideMitigationAction == other.validationOverrideMitigationAction; } 
@override int get hashCode { return Object.hash(validationDefaultMitigationAction, validationOverrideMitigationAction); } 
@override String toString() { return 'ShieldGlobalSettings(validationDefaultMitigationAction: $validationDefaultMitigationAction, validationOverrideMitigationAction: $validationOverrideMitigationAction)'; } 
 }
