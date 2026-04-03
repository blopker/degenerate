// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_origin.dart';@immutable final class CustomHostnameFallbackOriginForAZoneUpdateFallbackOriginForCustomHostnamesRequest {const CustomHostnameFallbackOriginForAZoneUpdateFallbackOriginForCustomHostnamesRequest({required this.origin});

factory CustomHostnameFallbackOriginForAZoneUpdateFallbackOriginForCustomHostnamesRequest.fromJson(Map<String, dynamic> json) { return CustomHostnameFallbackOriginForAZoneUpdateFallbackOriginForCustomHostnamesRequest(
  origin: TlsCertificatesAndHostnamesOrigin.fromJson(json['origin'] as String),
); }

/// Your origin hostname that requests to your custom hostnames will be sent to.
final TlsCertificatesAndHostnamesOrigin origin;

Map<String, dynamic> toJson() { return {
  'origin': origin.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('origin'); } 
CustomHostnameFallbackOriginForAZoneUpdateFallbackOriginForCustomHostnamesRequest copyWith({TlsCertificatesAndHostnamesOrigin? origin}) { return CustomHostnameFallbackOriginForAZoneUpdateFallbackOriginForCustomHostnamesRequest(
  origin: origin ?? this.origin,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomHostnameFallbackOriginForAZoneUpdateFallbackOriginForCustomHostnamesRequest &&
          origin == other.origin; } 
@override int get hashCode { return origin.hashCode; } 
@override String toString() { return 'CustomHostnameFallbackOriginForAZoneUpdateFallbackOriginForCustomHostnamesRequest(origin: $origin)'; } 
 }
