// GENERATED CODE - DO NOT MODIFY BY HAND

/// The default action performed by the rules in the WAF package.
final class FirewallActionMode {const FirewallActionMode._(this.value);

factory FirewallActionMode.fromJson(String json) { return switch (json) {
  'simulate' => simulate,
  'block' => block,
  'challenge' => challenge,
  _ => FirewallActionMode._(json),
}; }

static const FirewallActionMode simulate = FirewallActionMode._('simulate');

static const FirewallActionMode block = FirewallActionMode._('block');

static const FirewallActionMode challenge = FirewallActionMode._('challenge');

static const List<FirewallActionMode> values = [simulate, block, challenge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallActionMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallActionMode($value)'; } 
 }
/// The sensitivity of the WAF package.
final class FirewallSensitivity {const FirewallSensitivity._(this.value);

factory FirewallSensitivity.fromJson(String json) { return switch (json) {
  'high' => high,
  'medium' => medium,
  'low' => low,
  'off' => off,
  _ => FirewallSensitivity._(json),
}; }

static const FirewallSensitivity high = FirewallSensitivity._('high');

static const FirewallSensitivity medium = FirewallSensitivity._('medium');

static const FirewallSensitivity low = FirewallSensitivity._('low');

static const FirewallSensitivity off = FirewallSensitivity._('off');

static const List<FirewallSensitivity> values = [high, medium, low, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallSensitivity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallSensitivity($value)'; } 
 }
final class WafPackagesUpdateAWafPackageRequest {const WafPackagesUpdateAWafPackageRequest({this.actionMode, this.sensitivity, });

factory WafPackagesUpdateAWafPackageRequest.fromJson(Map<String, dynamic> json) { return WafPackagesUpdateAWafPackageRequest(
  actionMode: json['action_mode'] != null ? FirewallActionMode.fromJson(json['action_mode'] as String) : null,
  sensitivity: json['sensitivity'] != null ? FirewallSensitivity.fromJson(json['sensitivity'] as String) : null,
); }

/// The default action performed by the rules in the WAF package.
final FirewallActionMode? actionMode;

/// The sensitivity of the WAF package.
final FirewallSensitivity? sensitivity;

Map<String, dynamic> toJson() { return {
  if (actionMode != null) 'action_mode': actionMode?.toJson(),
  if (sensitivity != null) 'sensitivity': sensitivity?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'action_mode', 'sensitivity'}.contains(key)); } 
WafPackagesUpdateAWafPackageRequest copyWith({FirewallActionMode Function()? actionMode, FirewallSensitivity Function()? sensitivity, }) { return WafPackagesUpdateAWafPackageRequest(
  actionMode: actionMode != null ? actionMode() : this.actionMode,
  sensitivity: sensitivity != null ? sensitivity() : this.sensitivity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafPackagesUpdateAWafPackageRequest &&
          actionMode == other.actionMode &&
          sensitivity == other.sensitivity; } 
@override int get hashCode { return Object.hash(actionMode, sensitivity); } 
@override String toString() { return 'WafPackagesUpdateAWafPackageRequest(actionMode: $actionMode, sensitivity: $sensitivity)'; } 
 }
