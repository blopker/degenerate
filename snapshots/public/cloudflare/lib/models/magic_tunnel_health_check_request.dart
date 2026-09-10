// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_health_check_target_request.dart';import 'magic_tunnel_health_check_request_target.dart';/// How frequent the health check is run. The default value is `mid`.
@immutable final class MagicTunnelHealthCheckRequestRate {const MagicTunnelHealthCheckRequestRate._(this.value);

factory MagicTunnelHealthCheckRequestRate.fromJson(String json) {return switch (json) {
  'low' => low,
  'mid' => mid,
  'high' => high,
  _ => MagicTunnelHealthCheckRequestRate._(json),
};}

static const MagicTunnelHealthCheckRequestRate low = MagicTunnelHealthCheckRequestRate._('low');

static const MagicTunnelHealthCheckRequestRate mid = MagicTunnelHealthCheckRequestRate._('mid');

static const MagicTunnelHealthCheckRequestRate high = MagicTunnelHealthCheckRequestRate._('high');

static const List<MagicTunnelHealthCheckRequestRate> values = [low, mid, high];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is MagicTunnelHealthCheckRequestRate && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'MagicTunnelHealthCheckRequestRate($value)';}
}
/// The type of healthcheck to run, reply or request. The default value is `reply`.
@immutable final class MagicTunnelHealthCheckRequestType {const MagicTunnelHealthCheckRequestType._(this.value);

factory MagicTunnelHealthCheckRequestType.fromJson(String json) {return switch (json) {
  'reply' => reply,
  'request' => request,
  _ => MagicTunnelHealthCheckRequestType._(json),
};}

static const MagicTunnelHealthCheckRequestType reply = MagicTunnelHealthCheckRequestType._('reply');

static const MagicTunnelHealthCheckRequestType request = MagicTunnelHealthCheckRequestType._('request');

static const List<MagicTunnelHealthCheckRequestType> values = [reply, request];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is MagicTunnelHealthCheckRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'MagicTunnelHealthCheckRequestType($value)';}
}
/// The direction of the flow of the healthcheck. Either unidirectional, where the probe comes to you via the tunnel and the result comes back to Cloudflare via the open Internet, or bidirectional where both the probe and result come and go via the tunnel.
@immutable final class MagicTunnelHealthCheckRequestDirection {const MagicTunnelHealthCheckRequestDirection._(this.value);

factory MagicTunnelHealthCheckRequestDirection.fromJson(String json) {return switch (json) {
  'unidirectional' => unidirectional,
  'bidirectional' => bidirectional,
  _ => MagicTunnelHealthCheckRequestDirection._(json),
};}

static const MagicTunnelHealthCheckRequestDirection unidirectional = MagicTunnelHealthCheckRequestDirection._('unidirectional');

static const MagicTunnelHealthCheckRequestDirection bidirectional = MagicTunnelHealthCheckRequestDirection._('bidirectional');

static const List<MagicTunnelHealthCheckRequestDirection> values = [unidirectional, bidirectional];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is MagicTunnelHealthCheckRequestDirection && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'MagicTunnelHealthCheckRequestDirection($value)';}
}
@immutable final class MagicTunnelHealthCheckRequest {const MagicTunnelHealthCheckRequest({this.enabled, this.rate, this.target, this.type, this.direction, });

factory MagicTunnelHealthCheckRequest.fromJson(Map<String, dynamic> json) {return MagicTunnelHealthCheckRequest(
  enabled: json['enabled'] as bool?,
  rate: json['rate'] != null ? MagicTunnelHealthCheckRequestRate.fromJson(json['rate'] as String) : null,
  target: json['target'] != null ? OneOf2.parse(json['target'], fromA: (v) => MagicHealthCheckTargetRequest.fromJson(v as Map<String, dynamic>), fromB: (v) => v as String,) : null,
  type: json['type'] != null ? MagicTunnelHealthCheckRequestType.fromJson(json['type'] as String) : null,
  direction: json['direction'] != null ? MagicTunnelHealthCheckRequestDirection.fromJson(json['direction'] as String) : null,
);}

/// Determines whether to run healthchecks for a tunnel.
final bool? enabled;

/// How frequent the health check is run. The default value is `mid`.
final MagicTunnelHealthCheckRequestRate? rate;

/// The destination address in a request type health check. After the healthcheck is decapsulated at the customer end of the tunnel, the ICMP echo will be forwarded to this address. This field defaults to `customer_gre_endpoint address`. This field is ignored for bidirectional healthchecks as the interface_address (not assigned to the Cloudflare side of the tunnel) is used as the target. Must be in object form if the x-magic-new-hc-target header is set to true and string form if x-magic-new-hc-target is absent or set to false.
final MagicTunnelHealthCheckRequestTarget? target;

/// The type of healthcheck to run, reply or request. The default value is `reply`.
final MagicTunnelHealthCheckRequestType? type;

/// The direction of the flow of the healthcheck. Either unidirectional, where the probe comes to you via the tunnel and the result comes back to Cloudflare via the open Internet, or bidirectional where both the probe and result come and go via the tunnel.
final MagicTunnelHealthCheckRequestDirection? direction;

/// The value with the schema default applied when absent.
bool get enabledOrDefault {return enabled ?? true;}
/// The value with the schema default applied when absent.
MagicTunnelHealthCheckRequestRate get rateOrDefault {return rate ?? MagicTunnelHealthCheckRequestRate.fromJson('mid');}
/// The value with the schema default applied when absent.
MagicTunnelHealthCheckRequestType get typeOrDefault {return type ?? MagicTunnelHealthCheckRequestType.fromJson('reply');}
/// The value with the schema default applied when absent.
MagicTunnelHealthCheckRequestDirection get directionOrDefault {return direction ?? MagicTunnelHealthCheckRequestDirection.fromJson('unidirectional');}
Map<String, dynamic> toJson() {return {
  'enabled': ?enabled,
  if (rate != null) 'rate': rate?.toJson(),
  if (target != null) 'target': target?.toJson(),
  if (type != null) 'type': type?.toJson(),
  if (direction != null) 'direction': direction?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'enabled', 'rate', 'target', 'type', 'direction'}.contains(key));}
MagicTunnelHealthCheckRequest copyWith({bool? Function()? enabled, MagicTunnelHealthCheckRequestRate? Function()? rate, MagicTunnelHealthCheckRequestTarget? Function()? target, MagicTunnelHealthCheckRequestType? Function()? type, MagicTunnelHealthCheckRequestDirection? Function()? direction, }) {return MagicTunnelHealthCheckRequest(
  enabled: enabled != null ? enabled() : this.enabled,
  rate: rate != null ? rate() : this.rate,
  target: target != null ? target() : this.target,
  type: type != null ? type() : this.type,
  direction: direction != null ? direction() : this.direction,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is MagicTunnelHealthCheckRequest &&
          enabled == other.enabled &&
          rate == other.rate &&
          target == other.target &&
          type == other.type &&
          direction == other.direction;}
@override int get hashCode {return Object.hash(enabled, rate, target, type, direction);}
@override String toString() {return 'MagicTunnelHealthCheckRequest(enabled: $enabled, rate: $rate, target: $target, type: $type, direction: $direction)';}
}
