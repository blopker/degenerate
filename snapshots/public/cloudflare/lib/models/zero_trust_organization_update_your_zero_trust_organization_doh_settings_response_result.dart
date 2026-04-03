// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_doh_jwt_duration.dart';@immutable final class ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult {const ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult({this.dohJwtDuration});

factory ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult.fromJson(Map<String, dynamic> json) { return ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult(
  dohJwtDuration: json['doh_jwt_duration'] != null ? AccessDohJwtDuration.fromJson(json['doh_jwt_duration'] as String) : null,
); }

/// The duration the DoH JWT is valid for. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.  Note that the maximum duration for this setting is the same as the key rotation period on the account. Default expiration is 24h
final AccessDohJwtDuration? dohJwtDuration;

Map<String, dynamic> toJson() { return {
  if (dohJwtDuration != null) 'doh_jwt_duration': dohJwtDuration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'doh_jwt_duration'}.contains(key)); } 
ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult copyWith({AccessDohJwtDuration Function()? dohJwtDuration}) { return ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult(
  dohJwtDuration: dohJwtDuration != null ? dohJwtDuration() : this.dohJwtDuration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult &&
          dohJwtDuration == other.dohJwtDuration; } 
@override int get hashCode { return dohJwtDuration.hashCode; } 
@override String toString() { return 'ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult(dohJwtDuration: $dohJwtDuration)'; } 
 }
