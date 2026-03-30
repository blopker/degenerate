// GENERATED CODE - DO NOT MODIFY BY HAND

import 'get_security_center_issues_response_result_variant1.dart';final class GetSecurityCenterIssuesResponseResult {const GetSecurityCenterIssuesResponseResult({this.getSecurityCenterIssuesResponseResultVariant1});

factory GetSecurityCenterIssuesResponseResult.fromJson(Map<String, dynamic> json) { return GetSecurityCenterIssuesResponseResult(
  getSecurityCenterIssuesResponseResultVariant1: GetSecurityCenterIssuesResponseResultVariant1.canParse(json) ? GetSecurityCenterIssuesResponseResultVariant1.fromJson(json) : null,
); }

final GetSecurityCenterIssuesResponseResultVariant1? getSecurityCenterIssuesResponseResultVariant1;

/// At least one variant must be present.
bool get isValid { return getSecurityCenterIssuesResponseResultVariant1 != null; } 
Map<String, dynamic> toJson() { return {
  ...?getSecurityCenterIssuesResponseResultVariant1?.toJson(),
}; } 
 }
