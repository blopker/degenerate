// GENERATED CODE - DO NOT MODIFY BY HAND

import 'security_center_value_counts_response_result_variant1.dart';final class SecurityCenterValueCountsResponseResult {const SecurityCenterValueCountsResponseResult({this.listSecurityCenterValueCountsResponseResultVariant1});

factory SecurityCenterValueCountsResponseResult.fromJson(dynamic json) { return SecurityCenterValueCountsResponseResult(
  // listSecurityCenterValueCountsResponseResultVariant1: skipped (collection type in anyOf not supported)
); }

final List<SecurityCenterValueCountsResponseResultVariant1>? listSecurityCenterValueCountsResponseResultVariant1;

/// At least one variant must be present.
bool get isValid { return listSecurityCenterValueCountsResponseResultVariant1 != null; } 
Map<String, dynamic> toJson() { return {
  'listSecurityCenterValueCountsResponseResultVariant1': ?listSecurityCenterValueCountsResponseResultVariant1,
}; } 
 }
