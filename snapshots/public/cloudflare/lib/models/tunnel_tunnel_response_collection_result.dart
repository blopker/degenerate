// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tunnel_cfd_tunnel.dart';import 'tunnel_warp_connector_tunnel.dart';
@immutable
final class TunnelTunnelResponseCollectionResult {
  const TunnelTunnelResponseCollectionResult({this.tunnelCfdTunnel = const Omittable.absent(),
this.tunnelWarpConnectorTunnel = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const TunnelTunnelResponseCollectionResult._({required this.rawValue, required this.tunnelCfdTunnel,
required this.tunnelWarpConnectorTunnel,});
  factory TunnelTunnelResponseCollectionResult.fromJson(Object? json) => TunnelTunnelResponseCollectionResult._(
    rawValue: Omittable(json),
    tunnelCfdTunnel: parseAnyOfVariant<TunnelCfdTunnel>(json, (value) => TunnelCfdTunnel.fromJson(value! as Map<String, dynamic>)),
tunnelWarpConnectorTunnel: parseAnyOfVariant<TunnelWarpConnectorTunnel>(json, (value) => TunnelWarpConnectorTunnel.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TunnelCfdTunnel> tunnelCfdTunnel;
final Omittable<TunnelWarpConnectorTunnel> tunnelWarpConnectorTunnel;

  /// Whether at least one known variant matched.
  bool get isValid => tunnelCfdTunnel.isPresent || tunnelWarpConnectorTunnel.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (tunnelCfdTunnel.isPresent) tunnelCfdTunnel.value?.toJson(),
if (tunnelWarpConnectorTunnel.isPresent) tunnelWarpConnectorTunnel.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TunnelTunnelResponseCollectionResult && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'TunnelTunnelResponseCollectionResult(${toJson()})';
}
