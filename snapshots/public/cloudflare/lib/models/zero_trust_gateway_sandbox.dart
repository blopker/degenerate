// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specify the action to take when the system cannot scan the file.
final class ZeroTrustGatewaySandboxFallbackAction {const ZeroTrustGatewaySandboxFallbackAction._(this.value);

factory ZeroTrustGatewaySandboxFallbackAction.fromJson(String json) { return switch (json) {
  'allow' => allow,
  'block' => block,
  _ => ZeroTrustGatewaySandboxFallbackAction._(json),
}; }

static const ZeroTrustGatewaySandboxFallbackAction allow = ZeroTrustGatewaySandboxFallbackAction._('allow');

static const ZeroTrustGatewaySandboxFallbackAction block = ZeroTrustGatewaySandboxFallbackAction._('block');

static const List<ZeroTrustGatewaySandboxFallbackAction> values = [allow, block];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZeroTrustGatewaySandboxFallbackAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZeroTrustGatewaySandboxFallbackAction($value)'; } 
 }
/// Specify whether to enable the sandbox.
final class ZeroTrustGatewaySandbox {const ZeroTrustGatewaySandbox({this.enabled, this.fallbackAction, });

factory ZeroTrustGatewaySandbox.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewaySandbox(
  enabled: json['enabled'] as bool?,
  fallbackAction: json['fallback_action'] != null ? ZeroTrustGatewaySandboxFallbackAction.fromJson(json['fallback_action'] as String) : null,
); }

/// Specify whether to enable the sandbox.
final bool? enabled;

/// Specify the action to take when the system cannot scan the file.
final ZeroTrustGatewaySandboxFallbackAction? fallbackAction;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (fallbackAction != null) 'fallback_action': fallbackAction?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZeroTrustGatewaySandbox copyWith({bool? Function()? enabled, ZeroTrustGatewaySandboxFallbackAction Function()? fallbackAction, }) { return ZeroTrustGatewaySandbox(
  enabled: enabled != null ? enabled() : this.enabled,
  fallbackAction: fallbackAction != null ? fallbackAction() : this.fallbackAction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewaySandbox &&
          enabled == other.enabled &&
          fallbackAction == other.fallbackAction; } 
@override int get hashCode { return Object.hash(enabled, fallbackAction); } 
@override String toString() { return 'ZeroTrustGatewaySandbox(enabled: $enabled, fallbackAction: $fallbackAction)'; } 
 }
