// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The set of permissions for the GitHub app
final class IntegrationPermissions {const IntegrationPermissions({this.issues, this.checks, this.metadata, this.contents, this.deployments, this.additionalProperties = const {}, });

factory IntegrationPermissions.fromJson(Map<String, dynamic> json) { return IntegrationPermissions(
  issues: json['issues'] as String?,
  checks: json['checks'] as String?,
  metadata: json['metadata'] as String?,
  contents: json['contents'] as String?,
  deployments: json['deployments'] as String?,
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'issues', 'checks', 'metadata', 'contents', 'deployments'}.contains(e.key)).map((e) => MapEntry(e.key, e.value as String))),
); }

final String? issues;

final String? checks;

final String? metadata;

final String? contents;

final String? deployments;

final Map<String,String> additionalProperties;

Map<String, dynamic> toJson() { return {
  'issues': ?issues,
  'checks': ?checks,
  'metadata': ?metadata,
  'contents': ?contents,
  'deployments': ?deployments,
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'issues', 'checks', 'metadata', 'contents', 'deployments'}.contains(key)); } 
IntegrationPermissions copyWith({String Function()? issues, String Function()? checks, String Function()? metadata, String Function()? contents, String Function()? deployments, Map<String, String>? additionalProperties, }) { return IntegrationPermissions(
  issues: issues != null ? issues() : this.issues,
  checks: checks != null ? checks() : this.checks,
  metadata: metadata != null ? metadata() : this.metadata,
  contents: contents != null ? contents() : this.contents,
  deployments: deployments != null ? deployments() : this.deployments,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntegrationPermissions &&
          issues == other.issues &&
          checks == other.checks &&
          metadata == other.metadata &&
          contents == other.contents &&
          deployments == other.deployments &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(issues, checks, metadata, contents, deployments, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'IntegrationPermissions(issues: $issues, checks: $checks, metadata: $metadata, contents: $contents, deployments: $deployments, additionalProperties: $additionalProperties)'; } 
 }
