// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Controls whether commits to preview branches trigger a preview deployment.
final class PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting {const PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting._(this.value);

factory PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting.fromJson(String json) { return switch (json) {
  'all' => all,
  'none' => none,
  'custom' => custom,
  _ => PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting._(json),
}; }

static const PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting all = PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting._('all');

static const PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting none = PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting._('none');

static const PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting custom = PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting._('custom');

static const List<PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting> values = [all, none, custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting($value)'; } 
 }
final class PagesProjectUpdateProjectRequestSourceConfig {const PagesProjectUpdateProjectRequestSourceConfig({this.deploymentsEnabled, this.owner, this.ownerId, this.pathExcludes, this.pathIncludes, this.prCommentsEnabled, this.previewBranchExcludes, this.previewBranchIncludes, this.previewDeploymentSetting, this.productionBranch, this.productionDeploymentsEnabled, this.repoId, this.repoName, });

factory PagesProjectUpdateProjectRequestSourceConfig.fromJson(Map<String, dynamic> json) { return PagesProjectUpdateProjectRequestSourceConfig(
  deploymentsEnabled: json['deployments_enabled'] as bool?,
  owner: json['owner'] as String?,
  ownerId: json['owner_id'] as String?,
  pathExcludes: (json['path_excludes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  pathIncludes: (json['path_includes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  prCommentsEnabled: json['pr_comments_enabled'] as bool?,
  previewBranchExcludes: (json['preview_branch_excludes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  previewBranchIncludes: (json['preview_branch_includes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  previewDeploymentSetting: json['preview_deployment_setting'] != null ? PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting.fromJson(json['preview_deployment_setting'] as String) : null,
  productionBranch: json['production_branch'] as String?,
  productionDeploymentsEnabled: json['production_deployments_enabled'] as bool?,
  repoId: json['repo_id'] as String?,
  repoName: json['repo_name'] as String?,
); }

/// Whether to enable automatic deployments when pushing to the source repository.
/// When disabled, no deployments (production or preview) will be triggered automatically.
/// 
final bool? deploymentsEnabled;

/// The owner of the repository.
final String? owner;

/// The owner ID of the repository.
final String? ownerId;

/// A list of paths that should be excluded from triggering a preview deployment. Wildcard syntax (`*`) is supported.
final List<String>? pathExcludes;

/// A list of paths that should be watched to trigger a preview deployment. Wildcard syntax (`*`) is supported.
final List<String>? pathIncludes;

/// Whether to enable PR comments.
final bool? prCommentsEnabled;

/// A list of branches that should not trigger a preview deployment. Wildcard syntax (`*`) is supported. Must be used with `preview_deployment_setting` set to `custom`.
final List<String>? previewBranchExcludes;

/// A list of branches that should trigger a preview deployment. Wildcard syntax (`*`) is supported. Must be used with `preview_deployment_setting` set to `custom`.
final List<String>? previewBranchIncludes;

/// Controls whether commits to preview branches trigger a preview deployment.
final PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting? previewDeploymentSetting;

/// The production branch of the repository.
final String? productionBranch;

/// Whether to trigger a production deployment on commits to the production branch.
final bool? productionDeploymentsEnabled;

/// The ID of the repository.
final String? repoId;

/// The name of the repository.
final String? repoName;

Map<String, dynamic> toJson() { return {
  'deployments_enabled': ?deploymentsEnabled,
  'owner': ?owner,
  'owner_id': ?ownerId,
  'path_excludes': ?pathExcludes,
  'path_includes': ?pathIncludes,
  'pr_comments_enabled': ?prCommentsEnabled,
  'preview_branch_excludes': ?previewBranchExcludes,
  'preview_branch_includes': ?previewBranchIncludes,
  if (previewDeploymentSetting != null) 'preview_deployment_setting': previewDeploymentSetting?.toJson(),
  'production_branch': ?productionBranch,
  'production_deployments_enabled': ?productionDeploymentsEnabled,
  'repo_id': ?repoId,
  'repo_name': ?repoName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deployments_enabled', 'owner', 'owner_id', 'path_excludes', 'path_includes', 'pr_comments_enabled', 'preview_branch_excludes', 'preview_branch_includes', 'preview_deployment_setting', 'production_branch', 'production_deployments_enabled', 'repo_id', 'repo_name'}.contains(key)); } 
PagesProjectUpdateProjectRequestSourceConfig copyWith({bool Function()? deploymentsEnabled, String Function()? owner, String Function()? ownerId, List<String> Function()? pathExcludes, List<String> Function()? pathIncludes, bool Function()? prCommentsEnabled, List<String> Function()? previewBranchExcludes, List<String> Function()? previewBranchIncludes, PagesProjectUpdateProjectRequestSourceConfigPreviewDeploymentSetting Function()? previewDeploymentSetting, String Function()? productionBranch, bool Function()? productionDeploymentsEnabled, String Function()? repoId, String Function()? repoName, }) { return PagesProjectUpdateProjectRequestSourceConfig(
  deploymentsEnabled: deploymentsEnabled != null ? deploymentsEnabled() : this.deploymentsEnabled,
  owner: owner != null ? owner() : this.owner,
  ownerId: ownerId != null ? ownerId() : this.ownerId,
  pathExcludes: pathExcludes != null ? pathExcludes() : this.pathExcludes,
  pathIncludes: pathIncludes != null ? pathIncludes() : this.pathIncludes,
  prCommentsEnabled: prCommentsEnabled != null ? prCommentsEnabled() : this.prCommentsEnabled,
  previewBranchExcludes: previewBranchExcludes != null ? previewBranchExcludes() : this.previewBranchExcludes,
  previewBranchIncludes: previewBranchIncludes != null ? previewBranchIncludes() : this.previewBranchIncludes,
  previewDeploymentSetting: previewDeploymentSetting != null ? previewDeploymentSetting() : this.previewDeploymentSetting,
  productionBranch: productionBranch != null ? productionBranch() : this.productionBranch,
  productionDeploymentsEnabled: productionDeploymentsEnabled != null ? productionDeploymentsEnabled() : this.productionDeploymentsEnabled,
  repoId: repoId != null ? repoId() : this.repoId,
  repoName: repoName != null ? repoName() : this.repoName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesProjectUpdateProjectRequestSourceConfig &&
          deploymentsEnabled == other.deploymentsEnabled &&
          owner == other.owner &&
          ownerId == other.ownerId &&
          listEquals(pathExcludes, other.pathExcludes) &&
          listEquals(pathIncludes, other.pathIncludes) &&
          prCommentsEnabled == other.prCommentsEnabled &&
          listEquals(previewBranchExcludes, other.previewBranchExcludes) &&
          listEquals(previewBranchIncludes, other.previewBranchIncludes) &&
          previewDeploymentSetting == other.previewDeploymentSetting &&
          productionBranch == other.productionBranch &&
          productionDeploymentsEnabled == other.productionDeploymentsEnabled &&
          repoId == other.repoId &&
          repoName == other.repoName; } 
@override int get hashCode { return Object.hash(deploymentsEnabled, owner, ownerId, Object.hashAll(pathExcludes ?? const []), Object.hashAll(pathIncludes ?? const []), prCommentsEnabled, Object.hashAll(previewBranchExcludes ?? const []), Object.hashAll(previewBranchIncludes ?? const []), previewDeploymentSetting, productionBranch, productionDeploymentsEnabled, repoId, repoName); } 
@override String toString() { return 'PagesProjectUpdateProjectRequestSourceConfig(deploymentsEnabled: $deploymentsEnabled, owner: $owner, ownerId: $ownerId, pathExcludes: $pathExcludes, pathIncludes: $pathIncludes, prCommentsEnabled: $prCommentsEnabled, previewBranchExcludes: $previewBranchExcludes, previewBranchIncludes: $previewBranchIncludes, previewDeploymentSetting: $previewDeploymentSetting, productionBranch: $productionBranch, productionDeploymentsEnabled: $productionDeploymentsEnabled, repoId: $repoId, repoName: $repoName)'; } 
 }
