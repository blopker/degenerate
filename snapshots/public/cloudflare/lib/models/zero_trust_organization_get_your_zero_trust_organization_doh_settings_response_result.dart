// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult {const ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult({this.dohJwtDuration});

factory ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult.fromJson(Map<String, dynamic> json) { return ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult(
  dohJwtDuration: json['doh_jwt_duration'] as String?,
); }

/// The duration the DoH JWT is valid for. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.  Note that the maximum duration for this setting is the same as the key rotation period on the account.
final String? dohJwtDuration;

Map<String, dynamic> toJson() { return {
  'doh_jwt_duration': ?dohJwtDuration,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'doh_jwt_duration'}.contains(key)); } 
ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult copyWith({String Function()? dohJwtDuration}) { return ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult(
  dohJwtDuration: dohJwtDuration != null ? dohJwtDuration() : this.dohJwtDuration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult &&
          dohJwtDuration == other.dohJwtDuration; } 
@override int get hashCode { return dohJwtDuration.hashCode; } 
@override String toString() { return 'ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult(dohJwtDuration: $dohJwtDuration)'; } 
 }
