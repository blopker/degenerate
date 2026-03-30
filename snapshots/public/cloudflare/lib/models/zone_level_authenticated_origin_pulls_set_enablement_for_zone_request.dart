// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull_components_schemas_enabled.dart';final class ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneRequest {const ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneRequest({required this.enabled});

factory ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneRequest.fromJson(Map<String, dynamic> json) { return ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneRequest(
  enabled: TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasEnabled.fromJson(json['enabled'] as bool),
); }

/// Indicates whether zone-level authenticated origin pulls is enabled.
final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasEnabled enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled'); } 
ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneRequest copyWith({TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasEnabled? enabled}) { return ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneRequest(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneRequest &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'ZoneLevelAuthenticatedOriginPullsSetEnablementForZoneRequest(enabled: $enabled)'; } 
 }
