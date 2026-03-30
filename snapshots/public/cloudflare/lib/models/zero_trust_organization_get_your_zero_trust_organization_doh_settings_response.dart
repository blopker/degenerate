// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_organization_get_your_zero_trust_organization_doh_settings_response_result.dart';final class ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponse {const ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponse({this.result});

factory ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponse(
  result: json['result'] != null ? ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponse copyWith({ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult Function()? result}) { return ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponse(result: $result)'; } 
 }
