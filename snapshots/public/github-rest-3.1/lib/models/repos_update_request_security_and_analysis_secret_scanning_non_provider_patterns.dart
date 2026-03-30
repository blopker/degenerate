// GENERATED CODE - DO NOT MODIFY BY HAND

/// Use the `status` property to enable or disable secret scanning non-provider patterns for this repository. For more information, see "[Supported secret scanning patterns](/code-security/secret-scanning/introduction/supported-secret-scanning-patterns#supported-secrets)."
final class ReposUpdateRequestSecurityAndAnalysisSecretScanningNonProviderPatterns {const ReposUpdateRequestSecurityAndAnalysisSecretScanningNonProviderPatterns({this.status});

factory ReposUpdateRequestSecurityAndAnalysisSecretScanningNonProviderPatterns.fromJson(Map<String, dynamic> json) { return ReposUpdateRequestSecurityAndAnalysisSecretScanningNonProviderPatterns(
  status: json['status'] as String?,
); }

/// Can be `enabled` or `disabled`.
final String? status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
ReposUpdateRequestSecurityAndAnalysisSecretScanningNonProviderPatterns copyWith({String Function()? status}) { return ReposUpdateRequestSecurityAndAnalysisSecretScanningNonProviderPatterns(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateRequestSecurityAndAnalysisSecretScanningNonProviderPatterns &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ReposUpdateRequestSecurityAndAnalysisSecretScanningNonProviderPatterns(status: $status)'; } 
 }
