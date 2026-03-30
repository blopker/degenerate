// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_zone_security_center_insights_response_result_variant1.dart';final class GetZoneSecurityCenterInsightsResponseResult {const GetZoneSecurityCenterInsightsResponseResult({this.getZoneSecurityCenterInsightsResponseResultVariant1});

factory GetZoneSecurityCenterInsightsResponseResult.fromJson(Map<String, dynamic> json) { return GetZoneSecurityCenterInsightsResponseResult(
  getZoneSecurityCenterInsightsResponseResultVariant1: GetZoneSecurityCenterInsightsResponseResultVariant1.canParse(json) ? GetZoneSecurityCenterInsightsResponseResultVariant1.fromJson(json) : null,
); }

final GetZoneSecurityCenterInsightsResponseResultVariant1? getZoneSecurityCenterInsightsResponseResultVariant1;

/// At least one variant must be present.
bool get isValid { return getZoneSecurityCenterInsightsResponseResultVariant1 != null; } 
Map<String, dynamic> toJson() { return {
  ...?getZoneSecurityCenterInsightsResponseResultVariant1?.toJson(),
}; } 
 }
