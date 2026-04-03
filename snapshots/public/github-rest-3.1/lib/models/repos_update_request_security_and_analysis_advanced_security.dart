// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Use the `status` property to enable or disable GitHub Advanced Security for this repository.
/// For more information, see "[About GitHub Advanced
/// Security](/github/getting-started-with-github/learning-about-github/about-github-advanced-security)."
/// 
/// For standalone Code Scanning or Secret Protection products, this parameter cannot be used.
@immutable final class ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity {const ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity({this.status});

factory ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity.fromJson(Map<String, dynamic> json) { return ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity(
  status: json['status'] as String?,
); }

/// Can be `enabled` or `disabled`.
final String? status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity copyWith({String Function()? status}) { return ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity(status: $status)'; } 
 }
