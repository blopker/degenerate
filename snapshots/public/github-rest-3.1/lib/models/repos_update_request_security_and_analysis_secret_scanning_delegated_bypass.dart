// GENERATED CODE - DO NOT MODIFY BY HAND

/// Use the `status` property to enable or disable secret scanning delegated bypass for this repository.
final class ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedBypass {const ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedBypass({this.status});

factory ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedBypass.fromJson(Map<String, dynamic> json) { return ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedBypass(
  status: json['status'] as String?,
); }

/// Can be `enabled` or `disabled`.
final String? status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedBypass copyWith({String Function()? status}) { return ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedBypass(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedBypass &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedBypass(status: $status)'; } 
 }
