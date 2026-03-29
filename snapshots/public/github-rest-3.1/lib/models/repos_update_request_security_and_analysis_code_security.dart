// GENERATED CODE - DO NOT MODIFY BY HAND

/// Use the `status` property to enable or disable GitHub Code Security for this repository.
final class ReposUpdateRequestSecurityAndAnalysisCodeSecurity {const ReposUpdateRequestSecurityAndAnalysisCodeSecurity({this.status});

factory ReposUpdateRequestSecurityAndAnalysisCodeSecurity.fromJson(Map<String, dynamic> json) { return ReposUpdateRequestSecurityAndAnalysisCodeSecurity(
  status: json['status'] as String?,
); }

/// Can be `enabled` or `disabled`.
final String? status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
ReposUpdateRequestSecurityAndAnalysisCodeSecurity copyWith({String Function()? status}) { return ReposUpdateRequestSecurityAndAnalysisCodeSecurity(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateRequestSecurityAndAnalysisCodeSecurity &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ReposUpdateRequestSecurityAndAnalysisCodeSecurity(status: $status)'; } 
 }
