// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetSecurityCenterIssueTypesResponseResult {const GetSecurityCenterIssueTypesResponseResult({this.listString});

factory GetSecurityCenterIssueTypesResponseResult.fromJson(dynamic json) { return GetSecurityCenterIssueTypesResponseResult(
  // listString: skipped (collection type in anyOf not supported)
); }

final List<String>? listString;

/// At least one variant must be present.
bool get isValid { return listString != null; } 
Map<String, dynamic> toJson() { return {
  'listString': ?listString,
}; } 
 }
