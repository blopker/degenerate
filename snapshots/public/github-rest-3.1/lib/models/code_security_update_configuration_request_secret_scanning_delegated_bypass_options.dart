// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_security_update_configuration_request_secret_scanning_delegated_bypass_options_reviewers.dart';/// Feature options for secret scanning delegated bypass
final class CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions {const CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions({this.reviewers});

factory CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions.fromJson(Map<String, dynamic> json) { return CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions(
  reviewers: (json['reviewers'] as List<dynamic>?)?.map((e) => CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewers.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The bypass reviewers for secret scanning delegated bypass
final List<CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewers>? reviewers;

Map<String, dynamic> toJson() { return {
  if (reviewers != null) 'reviewers': reviewers?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reviewers'}.contains(key)); } 
CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions copyWith({List<CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewers> Function()? reviewers}) { return CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions(
  reviewers: reviewers != null ? reviewers() : this.reviewers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions &&
          listEquals(reviewers, other.reviewers); } 
@override int get hashCode { return Object.hashAll(reviewers ?? const []).hashCode; } 
@override String toString() { return 'CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions(reviewers: $reviewers)'; } 
 }
