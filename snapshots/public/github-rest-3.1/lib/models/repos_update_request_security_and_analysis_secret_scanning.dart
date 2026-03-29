// GENERATED CODE - DO NOT MODIFY BY HAND

/// Use the `status` property to enable or disable secret scanning for this repository. For more information, see "[About secret scanning](/code-security/secret-security/about-secret-scanning)."
final class ReposUpdateRequestSecurityAndAnalysisSecretScanning {const ReposUpdateRequestSecurityAndAnalysisSecretScanning({this.status});

factory ReposUpdateRequestSecurityAndAnalysisSecretScanning.fromJson(Map<String, dynamic> json) { return ReposUpdateRequestSecurityAndAnalysisSecretScanning(
  status: json['status'] as String?,
); }

/// Can be `enabled` or `disabled`.
final String? status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ReposUpdateRequestSecurityAndAnalysisSecretScanning copyWith({String Function()? status}) { return ReposUpdateRequestSecurityAndAnalysisSecretScanning(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateRequestSecurityAndAnalysisSecretScanning &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ReposUpdateRequestSecurityAndAnalysisSecretScanning(status: $status)'; } 
 }
