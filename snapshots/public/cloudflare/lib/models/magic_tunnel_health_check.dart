// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_health_check_target.dart';import 'magic_tunnel_health_check_target.dart';/// How frequent the health check is run. The default value is `mid`.
final class MagicTunnelHealthCheckRate {const MagicTunnelHealthCheckRate._(this.value);

factory MagicTunnelHealthCheckRate.fromJson(String json) { return switch (json) {
  'low' => low,
  'mid' => mid,
  'high' => high,
  _ => MagicTunnelHealthCheckRate._(json),
}; }

static const MagicTunnelHealthCheckRate low = MagicTunnelHealthCheckRate._('low');

static const MagicTunnelHealthCheckRate mid = MagicTunnelHealthCheckRate._('mid');

static const MagicTunnelHealthCheckRate high = MagicTunnelHealthCheckRate._('high');

static const List<MagicTunnelHealthCheckRate> values = [low, mid, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MagicTunnelHealthCheckRate && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MagicTunnelHealthCheckRate($value)'; } 
 }
/// The type of healthcheck to run, reply or request. The default value is `reply`.
final class MagicTunnelHealthCheckType {const MagicTunnelHealthCheckType._(this.value);

factory MagicTunnelHealthCheckType.fromJson(String json) { return switch (json) {
  'reply' => reply,
  'request' => request,
  _ => MagicTunnelHealthCheckType._(json),
}; }

static const MagicTunnelHealthCheckType reply = MagicTunnelHealthCheckType._('reply');

static const MagicTunnelHealthCheckType request = MagicTunnelHealthCheckType._('request');

static const List<MagicTunnelHealthCheckType> values = [reply, request];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MagicTunnelHealthCheckType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MagicTunnelHealthCheckType($value)'; } 
 }
/// The direction of the flow of the healthcheck. Either unidirectional, where the probe comes to you via the tunnel and the result comes back to Cloudflare via the open Internet, or bidirectional where both the probe and result come and go via the tunnel.
final class MagicTunnelHealthCheckDirection {const MagicTunnelHealthCheckDirection._(this.value);

factory MagicTunnelHealthCheckDirection.fromJson(String json) { return switch (json) {
  'unidirectional' => unidirectional,
  'bidirectional' => bidirectional,
  _ => MagicTunnelHealthCheckDirection._(json),
}; }

static const MagicTunnelHealthCheckDirection unidirectional = MagicTunnelHealthCheckDirection._('unidirectional');

static const MagicTunnelHealthCheckDirection bidirectional = MagicTunnelHealthCheckDirection._('bidirectional');

static const List<MagicTunnelHealthCheckDirection> values = [unidirectional, bidirectional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MagicTunnelHealthCheckDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MagicTunnelHealthCheckDirection($value)'; } 
 }
final class MagicTunnelHealthCheck {const MagicTunnelHealthCheck({this.enabled = true, this.rate = MagicTunnelHealthCheckRate.mid, this.target, this.type = MagicTunnelHealthCheckType.reply, this.direction = MagicTunnelHealthCheckDirection.unidirectional, });

factory MagicTunnelHealthCheck.fromJson(Map<String, dynamic> json) { return MagicTunnelHealthCheck(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : true,
  rate: json.containsKey('rate') ? MagicTunnelHealthCheckRate.fromJson(json['rate'] as String) : MagicTunnelHealthCheckRate.mid,
  target: json['target'] != null ? OneOf2.parse(json['target'], fromA: (v) => MagicHealthCheckTarget.fromJson(v as Map<String, dynamic>), fromB: (v) => v as String,) : null,
  type: json.containsKey('type') ? MagicTunnelHealthCheckType.fromJson(json['type'] as String) : MagicTunnelHealthCheckType.reply,
  direction: json.containsKey('direction') ? MagicTunnelHealthCheckDirection.fromJson(json['direction'] as String) : MagicTunnelHealthCheckDirection.unidirectional,
); }

/// Determines whether to run healthchecks for a tunnel.
final bool enabled;

/// How frequent the health check is run. The default value is `mid`.
final MagicTunnelHealthCheckRate rate;

/// The destination address in a request type health check. After the healthcheck is decapsulated at the customer end of the tunnel, the ICMP echo will be forwarded to this address. This field defaults to `customer_gre_endpoint address`. This field is ignored for bidirectional healthchecks as the interface_address (not assigned to the Cloudflare side of the tunnel) is used as the target. Must be in object form if the x-magic-new-hc-target header is set to true and string form if x-magic-new-hc-target is absent or set to false.
final MagicTunnelHealthCheckTarget? target;

/// The type of healthcheck to run, reply or request. The default value is `reply`.
final MagicTunnelHealthCheckType type;

/// The direction of the flow of the healthcheck. Either unidirectional, where the probe comes to you via the tunnel and the result comes back to Cloudflare via the open Internet, or bidirectional where both the probe and result come and go via the tunnel.
final MagicTunnelHealthCheckDirection direction;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'rate': rate.toJson(),
  if (target != null) 'target': target?.toJson(),
  'type': type.toJson(),
  'direction': direction.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'rate', 'target', 'type', 'direction'}.contains(key)); } 
MagicTunnelHealthCheck copyWith({bool Function()? enabled, MagicTunnelHealthCheckRate Function()? rate, MagicTunnelHealthCheckTarget Function()? target, MagicTunnelHealthCheckType Function()? type, MagicTunnelHealthCheckDirection Function()? direction, }) { return MagicTunnelHealthCheck(
  enabled: enabled != null ? enabled() : this.enabled,
  rate: rate != null ? rate() : this.rate,
  target: target != null ? target() : this.target,
  type: type != null ? type() : this.type,
  direction: direction != null ? direction() : this.direction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTunnelHealthCheck &&
          enabled == other.enabled &&
          rate == other.rate &&
          target == other.target &&
          type == other.type &&
          direction == other.direction; } 
@override int get hashCode { return Object.hash(enabled, rate, target, type, direction); } 
@override String toString() { return 'MagicTunnelHealthCheck(enabled: $enabled, rate: $rate, target: $target, type: $type, direction: $direction)'; } 
 }
