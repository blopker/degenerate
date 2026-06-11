// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of subnet.
@immutable final class TunnelSubnetType {const TunnelSubnetType._(this.value);

factory TunnelSubnetType.fromJson(String json) { return switch (json) {
  'cloudflare_source' => cloudflareSource,
  'warp' => warp,
  _ => TunnelSubnetType._(json),
}; }

static const TunnelSubnetType cloudflareSource = TunnelSubnetType._('cloudflare_source');

static const TunnelSubnetType warp = TunnelSubnetType._('warp');

static const List<TunnelSubnetType> values = [cloudflareSource, warp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TunnelSubnetType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TunnelSubnetType($value)'; } 
 }
