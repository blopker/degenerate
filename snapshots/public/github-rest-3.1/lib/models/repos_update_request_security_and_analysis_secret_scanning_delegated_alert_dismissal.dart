// GENERATED CODE - DO NOT MODIFY BY HAND

/// Use the `status` property to enable or disable secret scanning delegated alert dismissal for this repository.
final class ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedAlertDismissal {const ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedAlertDismissal({this.status});

factory ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedAlertDismissal.fromJson(Map<String, dynamic> json) { return ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedAlertDismissal(
  status: json['status'] as String?,
); }

/// Can be `enabled` or `disabled`.
final String? status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedAlertDismissal copyWith({String Function()? status}) { return ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedAlertDismissal(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedAlertDismissal &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ReposUpdateRequestSecurityAndAnalysisSecretScanningDelegatedAlertDismissal(status: $status)'; } 
 }
