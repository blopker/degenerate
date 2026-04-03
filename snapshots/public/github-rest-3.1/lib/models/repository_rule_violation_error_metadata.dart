// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_violation_error_metadata_secret_scanning.dart';@immutable final class RepositoryRuleViolationErrorMetadata {const RepositoryRuleViolationErrorMetadata({this.secretScanning});

factory RepositoryRuleViolationErrorMetadata.fromJson(Map<String, dynamic> json) { return RepositoryRuleViolationErrorMetadata(
  secretScanning: json['secret_scanning'] != null ? RepositoryRuleViolationErrorMetadataSecretScanning.fromJson(json['secret_scanning'] as Map<String, dynamic>) : null,
); }

final RepositoryRuleViolationErrorMetadataSecretScanning? secretScanning;

Map<String, dynamic> toJson() { return {
  if (secretScanning != null) 'secret_scanning': secretScanning?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'secret_scanning'}.contains(key)); } 
RepositoryRuleViolationErrorMetadata copyWith({RepositoryRuleViolationErrorMetadataSecretScanning Function()? secretScanning}) { return RepositoryRuleViolationErrorMetadata(
  secretScanning: secretScanning != null ? secretScanning() : this.secretScanning,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleViolationErrorMetadata &&
          secretScanning == other.secretScanning; } 
@override int get hashCode { return secretScanning.hashCode; } 
@override String toString() { return 'RepositoryRuleViolationErrorMetadata(secretScanning: $secretScanning)'; } 
 }
