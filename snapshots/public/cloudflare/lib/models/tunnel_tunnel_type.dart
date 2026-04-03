// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of tunnel.
@immutable final class TunnelTunnelType {const TunnelTunnelType._(this.value);

factory TunnelTunnelType.fromJson(String json) { return switch (json) {
  'cfd_tunnel' => cfdTunnel,
  'warp_connector' => warpConnector,
  'warp' => warp,
  'magic' => magic,
  'ip_sec' => ipSec,
  'gre' => gre,
  'cni' => cni,
  _ => TunnelTunnelType._(json),
}; }

static const TunnelTunnelType cfdTunnel = TunnelTunnelType._('cfd_tunnel');

static const TunnelTunnelType warpConnector = TunnelTunnelType._('warp_connector');

static const TunnelTunnelType warp = TunnelTunnelType._('warp');

static const TunnelTunnelType magic = TunnelTunnelType._('magic');

static const TunnelTunnelType ipSec = TunnelTunnelType._('ip_sec');

static const TunnelTunnelType gre = TunnelTunnelType._('gre');

static const TunnelTunnelType cni = TunnelTunnelType._('cni');

static const List<TunnelTunnelType> values = [cfdTunnel, warpConnector, warp, magic, ipSec, gre, cni];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TunnelTunnelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TunnelTunnelType($value)'; } 
 }
