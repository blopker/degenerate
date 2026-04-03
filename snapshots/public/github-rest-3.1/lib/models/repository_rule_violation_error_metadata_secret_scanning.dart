// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_violation_error_metadata_secret_scanning_bypass_placeholders.dart';@immutable final class RepositoryRuleViolationErrorMetadataSecretScanning {const RepositoryRuleViolationErrorMetadataSecretScanning({this.bypassPlaceholders});

factory RepositoryRuleViolationErrorMetadataSecretScanning.fromJson(Map<String, dynamic> json) { return RepositoryRuleViolationErrorMetadataSecretScanning(
  bypassPlaceholders: (json['bypass_placeholders'] as List<dynamic>?)?.map((e) => RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders>? bypassPlaceholders;

Map<String, dynamic> toJson() { return {
  if (bypassPlaceholders != null) 'bypass_placeholders': bypassPlaceholders?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bypass_placeholders'}.contains(key)); } 
RepositoryRuleViolationErrorMetadataSecretScanning copyWith({List<RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders> Function()? bypassPlaceholders}) { return RepositoryRuleViolationErrorMetadataSecretScanning(
  bypassPlaceholders: bypassPlaceholders != null ? bypassPlaceholders() : this.bypassPlaceholders,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleViolationErrorMetadataSecretScanning &&
          listEquals(bypassPlaceholders, other.bypassPlaceholders); } 
@override int get hashCode { return Object.hashAll(bypassPlaceholders ?? const []).hashCode; } 
@override String toString() { return 'RepositoryRuleViolationErrorMetadataSecretScanning(bypassPlaceholders: $bypassPlaceholders)'; } 
 }
