// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_organization_update_your_zero_trust_organization_doh_settings_response_result.dart';@immutable final class ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponse {const ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponse({this.result});

factory ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponse(
  result: json['result'] != null ? ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponse copyWith({ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult Function()? result}) { return ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponse(result: $result)'; } 
 }
