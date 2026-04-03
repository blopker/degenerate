// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'security_and_analysis_secret_scanning_delegated_bypass_options_reviewers.dart';@immutable final class SecurityAndAnalysisSecretScanningDelegatedBypassOptions {const SecurityAndAnalysisSecretScanningDelegatedBypassOptions({this.reviewers});

factory SecurityAndAnalysisSecretScanningDelegatedBypassOptions.fromJson(Map<String, dynamic> json) { return SecurityAndAnalysisSecretScanningDelegatedBypassOptions(
  reviewers: (json['reviewers'] as List<dynamic>?)?.map((e) => SecurityAndAnalysisSecretScanningDelegatedBypassOptionsReviewers.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The bypass reviewers for secret scanning delegated bypass
final List<SecurityAndAnalysisSecretScanningDelegatedBypassOptionsReviewers>? reviewers;

Map<String, dynamic> toJson() { return {
  if (reviewers != null) 'reviewers': reviewers?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reviewers'}.contains(key)); } 
SecurityAndAnalysisSecretScanningDelegatedBypassOptions copyWith({List<SecurityAndAnalysisSecretScanningDelegatedBypassOptionsReviewers> Function()? reviewers}) { return SecurityAndAnalysisSecretScanningDelegatedBypassOptions(
  reviewers: reviewers != null ? reviewers() : this.reviewers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecurityAndAnalysisSecretScanningDelegatedBypassOptions &&
          listEquals(reviewers, other.reviewers); } 
@override int get hashCode { return Object.hashAll(reviewers ?? const []).hashCode; } 
@override String toString() { return 'SecurityAndAnalysisSecretScanningDelegatedBypassOptions(reviewers: $reviewers)'; } 
 }
