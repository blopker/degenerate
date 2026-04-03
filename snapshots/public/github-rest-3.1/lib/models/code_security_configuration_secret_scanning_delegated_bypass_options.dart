// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_security_configuration_secret_scanning_delegated_bypass_options_reviewers.dart';/// Feature options for secret scanning delegated bypass
@immutable final class CodeSecurityConfigurationSecretScanningDelegatedBypassOptions {const CodeSecurityConfigurationSecretScanningDelegatedBypassOptions({this.reviewers});

factory CodeSecurityConfigurationSecretScanningDelegatedBypassOptions.fromJson(Map<String, dynamic> json) { return CodeSecurityConfigurationSecretScanningDelegatedBypassOptions(
  reviewers: (json['reviewers'] as List<dynamic>?)?.map((e) => CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewers.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The bypass reviewers for secret scanning delegated bypass
final List<CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewers>? reviewers;

Map<String, dynamic> toJson() { return {
  if (reviewers != null) 'reviewers': reviewers?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reviewers'}.contains(key)); } 
CodeSecurityConfigurationSecretScanningDelegatedBypassOptions copyWith({List<CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewers> Function()? reviewers}) { return CodeSecurityConfigurationSecretScanningDelegatedBypassOptions(
  reviewers: reviewers != null ? reviewers() : this.reviewers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeSecurityConfigurationSecretScanningDelegatedBypassOptions &&
          listEquals(reviewers, other.reviewers); } 
@override int get hashCode { return Object.hashAll(reviewers ?? const []).hashCode; } 
@override String toString() { return 'CodeSecurityConfigurationSecretScanningDelegatedBypassOptions(reviewers: $reviewers)'; } 
 }
