// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If set, the types of subnets to include, separated by comma.
@immutable final class ZeroTrustNetworksSubnetsListSubnetTypes {const ZeroTrustNetworksSubnetsListSubnetTypes._(this.value);

factory ZeroTrustNetworksSubnetsListSubnetTypes.fromJson(String json) { return switch (json) {
  'cloudflare_source' => cloudflareSource,
  'warp' => warp,
  _ => ZeroTrustNetworksSubnetsListSubnetTypes._(json),
}; }

static const ZeroTrustNetworksSubnetsListSubnetTypes cloudflareSource = ZeroTrustNetworksSubnetsListSubnetTypes._('cloudflare_source');

static const ZeroTrustNetworksSubnetsListSubnetTypes warp = ZeroTrustNetworksSubnetsListSubnetTypes._('warp');

static const List<ZeroTrustNetworksSubnetsListSubnetTypes> values = [cloudflareSource, warp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZeroTrustNetworksSubnetsListSubnetTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZeroTrustNetworksSubnetsListSubnetTypes($value)'; } 
 }
