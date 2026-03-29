// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specify the action to perform when the associated traffic, identity, and device posture expressions either absent or evaluate to `true`.
final class ZeroTrustGatewayAction {const ZeroTrustGatewayAction._(this.value);

factory ZeroTrustGatewayAction.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  'allow' => allow,
  'block' => block,
  'scan' => scan,
  'noscan' => noscan,
  'safesearch' => safesearch,
  'ytrestricted' => ytrestricted,
  'isolate' => isolate,
  'noisolate' => noisolate,
  'override' => $override,
  'l4_override' => l4Override,
  'egress' => egress,
  'resolve' => resolve,
  'quarantine' => quarantine,
  'redirect' => redirect,
  _ => ZeroTrustGatewayAction._(json),
}; }

static const ZeroTrustGatewayAction $on = ZeroTrustGatewayAction._('on');

static const ZeroTrustGatewayAction off = ZeroTrustGatewayAction._('off');

static const ZeroTrustGatewayAction allow = ZeroTrustGatewayAction._('allow');

static const ZeroTrustGatewayAction block = ZeroTrustGatewayAction._('block');

static const ZeroTrustGatewayAction scan = ZeroTrustGatewayAction._('scan');

static const ZeroTrustGatewayAction noscan = ZeroTrustGatewayAction._('noscan');

static const ZeroTrustGatewayAction safesearch = ZeroTrustGatewayAction._('safesearch');

static const ZeroTrustGatewayAction ytrestricted = ZeroTrustGatewayAction._('ytrestricted');

static const ZeroTrustGatewayAction isolate = ZeroTrustGatewayAction._('isolate');

static const ZeroTrustGatewayAction noisolate = ZeroTrustGatewayAction._('noisolate');

static const ZeroTrustGatewayAction $override = ZeroTrustGatewayAction._('override');

static const ZeroTrustGatewayAction l4Override = ZeroTrustGatewayAction._('l4_override');

static const ZeroTrustGatewayAction egress = ZeroTrustGatewayAction._('egress');

static const ZeroTrustGatewayAction resolve = ZeroTrustGatewayAction._('resolve');

static const ZeroTrustGatewayAction quarantine = ZeroTrustGatewayAction._('quarantine');

static const ZeroTrustGatewayAction redirect = ZeroTrustGatewayAction._('redirect');

static const List<ZeroTrustGatewayAction> values = [$on, off, allow, block, scan, noscan, safesearch, ytrestricted, isolate, noisolate, $override, l4Override, egress, resolve, quarantine, redirect];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZeroTrustGatewayAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayAction($value)'; } 
 }
