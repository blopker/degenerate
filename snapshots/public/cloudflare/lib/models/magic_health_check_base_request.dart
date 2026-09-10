// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_health_check_base_request_target.dart';import 'magic_health_check_target_request.dart';/// How frequent the health check is run. The default value is `mid`.
@immutable final class MagicHealthCheckBaseRequestRate {const MagicHealthCheckBaseRequestRate._(this.value);

factory MagicHealthCheckBaseRequestRate.fromJson(String json) {return switch (json) {
  'low' => low,
  'mid' => mid,
  'high' => high,
  _ => MagicHealthCheckBaseRequestRate._(json),
};}

static const MagicHealthCheckBaseRequestRate low = MagicHealthCheckBaseRequestRate._('low');

static const MagicHealthCheckBaseRequestRate mid = MagicHealthCheckBaseRequestRate._('mid');

static const MagicHealthCheckBaseRequestRate high = MagicHealthCheckBaseRequestRate._('high');

static const List<MagicHealthCheckBaseRequestRate> values = [low, mid, high];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is MagicHealthCheckBaseRequestRate && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'MagicHealthCheckBaseRequestRate($value)';}
}
/// The type of healthcheck to run, reply or request. The default value is `reply`.
@immutable final class MagicHealthCheckBaseRequestType {const MagicHealthCheckBaseRequestType._(this.value);

factory MagicHealthCheckBaseRequestType.fromJson(String json) {return switch (json) {
  'reply' => reply,
  'request' => request,
  _ => MagicHealthCheckBaseRequestType._(json),
};}

static const MagicHealthCheckBaseRequestType reply = MagicHealthCheckBaseRequestType._('reply');

static const MagicHealthCheckBaseRequestType request = MagicHealthCheckBaseRequestType._('request');

static const List<MagicHealthCheckBaseRequestType> values = [reply, request];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is MagicHealthCheckBaseRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'MagicHealthCheckBaseRequestType($value)';}
}
@immutable final class MagicHealthCheckBaseRequest {const MagicHealthCheckBaseRequest({this.enabled, this.rate, this.target, this.type, });

factory MagicHealthCheckBaseRequest.fromJson(Map<String, dynamic> json) {return MagicHealthCheckBaseRequest(
  enabled: json['enabled'] as bool?,
  rate: json['rate'] != null ? MagicHealthCheckBaseRequestRate.fromJson(json['rate'] as String) : null,
  target: json['target'] != null ? OneOf2.parse(json['target'], fromA: (v) => MagicHealthCheckTargetRequest.fromJson(v as Map<String, dynamic>), fromB: (v) => v as String,) : null,
  type: json['type'] != null ? MagicHealthCheckBaseRequestType.fromJson(json['type'] as String) : null,
);}

/// Determines whether to run healthchecks for a tunnel.
final bool? enabled;

/// How frequent the health check is run. The default value is `mid`.
final MagicHealthCheckBaseRequestRate? rate;

/// The destination address in a request type health check. After the healthcheck is decapsulated at the customer end of the tunnel, the ICMP echo will be forwarded to this address. This field defaults to `customer_gre_endpoint address`. This field is ignored for bidirectional healthchecks as the interface_address (not assigned to the Cloudflare side of the tunnel) is used as the target. Must be in object form if the x-magic-new-hc-target header is set to true and string form if x-magic-new-hc-target is absent or set to false.
final MagicHealthCheckBaseRequestTarget? target;

/// The type of healthcheck to run, reply or request. The default value is `reply`.
final MagicHealthCheckBaseRequestType? type;

/// The value with the schema default applied when absent.
bool get enabledOrDefault {return enabled ?? true;}
/// The value with the schema default applied when absent.
MagicHealthCheckBaseRequestRate get rateOrDefault {return rate ?? MagicHealthCheckBaseRequestRate.fromJson('mid');}
/// The value with the schema default applied when absent.
MagicHealthCheckBaseRequestType get typeOrDefault {return type ?? MagicHealthCheckBaseRequestType.fromJson('reply');}
Map<String, dynamic> toJson() {return {
  'enabled': ?enabled,
  if (rate != null) 'rate': rate?.toJson(),
  if (target != null) 'target': target?.toJson(),
  if (type != null) 'type': type?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'enabled', 'rate', 'target', 'type'}.contains(key));}
MagicHealthCheckBaseRequest copyWith({bool? Function()? enabled, MagicHealthCheckBaseRequestRate? Function()? rate, MagicHealthCheckBaseRequestTarget? Function()? target, MagicHealthCheckBaseRequestType? Function()? type, }) {return MagicHealthCheckBaseRequest(
  enabled: enabled != null ? enabled() : this.enabled,
  rate: rate != null ? rate() : this.rate,
  target: target != null ? target() : this.target,
  type: type != null ? type() : this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is MagicHealthCheckBaseRequest &&
          enabled == other.enabled &&
          rate == other.rate &&
          target == other.target &&
          type == other.type;}
@override int get hashCode {return Object.hash(enabled, rate, target, type);}
@override String toString() {return 'MagicHealthCheckBaseRequest(enabled: $enabled, rate: $rate, target: $target, type: $type)';}
}
