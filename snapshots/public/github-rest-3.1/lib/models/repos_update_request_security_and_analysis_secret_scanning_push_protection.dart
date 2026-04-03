// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Use the `status` property to enable or disable secret scanning push protection for this repository. For more information, see "[Protecting pushes with secret scanning](/code-security/secret-scanning/protecting-pushes-with-secret-scanning)."
@immutable final class ReposUpdateRequestSecurityAndAnalysisSecretScanningPushProtection {const ReposUpdateRequestSecurityAndAnalysisSecretScanningPushProtection({this.status});

factory ReposUpdateRequestSecurityAndAnalysisSecretScanningPushProtection.fromJson(Map<String, dynamic> json) { return ReposUpdateRequestSecurityAndAnalysisSecretScanningPushProtection(
  status: json['status'] as String?,
); }

/// Can be `enabled` or `disabled`.
final String? status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
ReposUpdateRequestSecurityAndAnalysisSecretScanningPushProtection copyWith({String Function()? status}) { return ReposUpdateRequestSecurityAndAnalysisSecretScanningPushProtection(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateRequestSecurityAndAnalysisSecretScanningPushProtection &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ReposUpdateRequestSecurityAndAnalysisSecretScanningPushProtection(status: $status)'; } 
 }
