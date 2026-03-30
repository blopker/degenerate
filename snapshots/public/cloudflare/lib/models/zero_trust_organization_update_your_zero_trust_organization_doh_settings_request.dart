// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_doh_jwt_duration.dart';final class ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsRequest {const ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsRequest({this.dohJwtDuration, this.serviceTokenId, });

factory ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsRequest.fromJson(Map<String, dynamic> json) { return ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsRequest(
  dohJwtDuration: json['doh_jwt_duration'] != null ? AccessDohJwtDuration.fromJson(json['doh_jwt_duration'] as String) : null,
  serviceTokenId: json['service_token_id'] as String?,
); }

/// The duration the DoH JWT is valid for. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.  Note that the maximum duration for this setting is the same as the key rotation period on the account. Default expiration is 24h
final AccessDohJwtDuration? dohJwtDuration;

/// The uuid of the service token you want to use for DoH authentication
final String? serviceTokenId;

Map<String, dynamic> toJson() { return {
  if (dohJwtDuration != null) 'doh_jwt_duration': dohJwtDuration?.toJson(),
  'service_token_id': ?serviceTokenId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'doh_jwt_duration', 'service_token_id'}.contains(key)); } 
ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsRequest copyWith({AccessDohJwtDuration Function()? dohJwtDuration, String Function()? serviceTokenId, }) { return ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsRequest(
  dohJwtDuration: dohJwtDuration != null ? dohJwtDuration() : this.dohJwtDuration,
  serviceTokenId: serviceTokenId != null ? serviceTokenId() : this.serviceTokenId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsRequest &&
          dohJwtDuration == other.dohJwtDuration &&
          serviceTokenId == other.serviceTokenId; } 
@override int get hashCode { return Object.hash(dohJwtDuration, serviceTokenId); } 
@override String toString() { return 'ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsRequest(dohJwtDuration: $dohJwtDuration, serviceTokenId: $serviceTokenId)'; } 
 }
