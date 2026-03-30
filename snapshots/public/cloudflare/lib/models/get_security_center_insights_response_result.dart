// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_security_center_insights_response_result_variant1.dart';final class GetSecurityCenterInsightsResponseResult {const GetSecurityCenterInsightsResponseResult({this.getSecurityCenterInsightsResponseResultVariant1});

factory GetSecurityCenterInsightsResponseResult.fromJson(Map<String, dynamic> json) { return GetSecurityCenterInsightsResponseResult(
  getSecurityCenterInsightsResponseResultVariant1: GetSecurityCenterInsightsResponseResultVariant1.canParse(json) ? GetSecurityCenterInsightsResponseResultVariant1.fromJson(json) : null,
); }

final GetSecurityCenterInsightsResponseResultVariant1? getSecurityCenterInsightsResponseResultVariant1;

/// At least one variant must be present.
bool get isValid { return getSecurityCenterInsightsResponseResultVariant1 != null; } 
Map<String, dynamic> toJson() { return {
  ...?getSecurityCenterInsightsResponseResultVariant1?.toJson(),
}; } 
 }
