// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specify the action to take when the system cannot scan the file.
@immutable final class ZeroTrustGatewaySandboxFallbackAction {const ZeroTrustGatewaySandboxFallbackAction._(this.value);

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
@immutable final class ZeroTrustGatewaySandbox {const ZeroTrustGatewaySandbox({this.enabled = const Omittable.absent(), this.fallbackAction, });

factory ZeroTrustGatewaySandbox.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewaySandbox(
  enabled: json.containsKey('enabled') ? Omittable(json['enabled'] as bool?) : const Omittable.absent(),
  fallbackAction: json['fallback_action'] != null ? ZeroTrustGatewaySandboxFallbackAction.fromJson(json['fallback_action'] as String) : null,
); }

/// Specify whether to enable the sandbox.
final Omittable<bool?> enabled;

/// Specify the action to take when the system cannot scan the file.
final ZeroTrustGatewaySandboxFallbackAction? fallbackAction;

Map<String, dynamic> toJson() { return {
  if (enabled.isPresent) 'enabled': enabled.value,
  if (fallbackAction != null) 'fallback_action': fallbackAction?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'fallback_action'}.contains(key)); } 
ZeroTrustGatewaySandbox copyWith({Omittable<bool?>? enabled, ZeroTrustGatewaySandboxFallbackAction? Function()? fallbackAction, }) { return ZeroTrustGatewaySandbox(
  enabled: enabled ?? this.enabled,
  fallbackAction: fallbackAction != null ? fallbackAction() : this.fallbackAction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewaySandbox &&
          enabled == other.enabled &&
          fallbackAction == other.fallbackAction; } 
@override int get hashCode { return Object.hash(enabled, fallbackAction); } 
@override String toString() { return 'ZeroTrustGatewaySandbox(enabled: $enabled, fallbackAction: $fallbackAction)'; } 
 }
