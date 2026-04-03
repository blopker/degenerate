// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull_components_schemas_enabled.dart';@immutable final class TlsCertificatesAndHostnamesEnabledResponseResult {const TlsCertificatesAndHostnamesEnabledResponseResult({this.enabled});

factory TlsCertificatesAndHostnamesEnabledResponseResult.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesEnabledResponseResult(
  enabled: json['enabled'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasEnabled.fromJson(json['enabled'] as bool) : null,
); }

final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasEnabled? enabled;

Map<String, dynamic> toJson() { return {
  if (enabled != null) 'enabled': enabled?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
TlsCertificatesAndHostnamesEnabledResponseResult copyWith({TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasEnabled Function()? enabled}) { return TlsCertificatesAndHostnamesEnabledResponseResult(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesEnabledResponseResult &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesEnabledResponseResult(enabled: $enabled)'; } 
 }
