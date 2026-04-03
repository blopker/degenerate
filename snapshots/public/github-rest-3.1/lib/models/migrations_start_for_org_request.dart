// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MigrationsStartForOrgRequestExclude {const MigrationsStartForOrgRequestExclude._(this.value);

factory MigrationsStartForOrgRequestExclude.fromJson(String json) { return switch (json) {
  'repositories' => repositories,
  _ => MigrationsStartForOrgRequestExclude._(json),
}; }

static const MigrationsStartForOrgRequestExclude repositories = MigrationsStartForOrgRequestExclude._('repositories');

static const List<MigrationsStartForOrgRequestExclude> values = [repositories];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MigrationsStartForOrgRequestExclude && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MigrationsStartForOrgRequestExclude($value)'; } 
 }
@immutable final class MigrationsStartForOrgRequest {const MigrationsStartForOrgRequest({required this.repositories, this.lockRepositories = false, this.excludeMetadata = false, this.excludeGitData = false, this.excludeAttachments = false, this.excludeReleases = false, this.excludeOwnerProjects = false, this.orgMetadataOnly = false, this.exclude, });

factory MigrationsStartForOrgRequest.fromJson(Map<String, dynamic> json) { return MigrationsStartForOrgRequest(
  repositories: (json['repositories'] as List<dynamic>).map((e) => e as String).toList(),
  lockRepositories: json.containsKey('lock_repositories') ? json['lock_repositories'] as bool : false,
  excludeMetadata: json.containsKey('exclude_metadata') ? json['exclude_metadata'] as bool : false,
  excludeGitData: json.containsKey('exclude_git_data') ? json['exclude_git_data'] as bool : false,
  excludeAttachments: json.containsKey('exclude_attachments') ? json['exclude_attachments'] as bool : false,
  excludeReleases: json.containsKey('exclude_releases') ? json['exclude_releases'] as bool : false,
  excludeOwnerProjects: json.containsKey('exclude_owner_projects') ? json['exclude_owner_projects'] as bool : false,
  orgMetadataOnly: json.containsKey('org_metadata_only') ? json['org_metadata_only'] as bool : false,
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => MigrationsStartForOrgRequestExclude.fromJson(e as String)).toList(),
); }

/// A list of arrays indicating which repositories should be migrated.
final List<String> repositories;

/// Indicates whether repositories should be locked (to prevent manipulation) while migrating data.
final bool lockRepositories;

/// Indicates whether metadata should be excluded and only git source should be included for the migration.
final bool excludeMetadata;

/// Indicates whether the repository git data should be excluded from the migration.
final bool excludeGitData;

/// Indicates whether attachments should be excluded from the migration (to reduce migration archive file size).
final bool excludeAttachments;

/// Indicates whether releases should be excluded from the migration (to reduce migration archive file size).
final bool excludeReleases;

/// Indicates whether projects owned by the organization or users should be excluded. from the migration.
final bool excludeOwnerProjects;

/// Indicates whether this should only include organization metadata (repositories array should be empty and will ignore other flags).
final bool orgMetadataOnly;

/// Exclude related items from being returned in the response in order to improve performance of the request.
final List<MigrationsStartForOrgRequestExclude>? exclude;

Map<String, dynamic> toJson() { return {
  'repositories': repositories,
  'lock_repositories': lockRepositories,
  'exclude_metadata': excludeMetadata,
  'exclude_git_data': excludeGitData,
  'exclude_attachments': excludeAttachments,
  'exclude_releases': excludeReleases,
  'exclude_owner_projects': excludeOwnerProjects,
  'org_metadata_only': orgMetadataOnly,
  if (exclude != null) 'exclude': exclude?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('repositories'); } 
MigrationsStartForOrgRequest copyWith({List<String>? repositories, bool Function()? lockRepositories, bool Function()? excludeMetadata, bool Function()? excludeGitData, bool Function()? excludeAttachments, bool Function()? excludeReleases, bool Function()? excludeOwnerProjects, bool Function()? orgMetadataOnly, List<MigrationsStartForOrgRequestExclude> Function()? exclude, }) { return MigrationsStartForOrgRequest(
  repositories: repositories ?? this.repositories,
  lockRepositories: lockRepositories != null ? lockRepositories() : this.lockRepositories,
  excludeMetadata: excludeMetadata != null ? excludeMetadata() : this.excludeMetadata,
  excludeGitData: excludeGitData != null ? excludeGitData() : this.excludeGitData,
  excludeAttachments: excludeAttachments != null ? excludeAttachments() : this.excludeAttachments,
  excludeReleases: excludeReleases != null ? excludeReleases() : this.excludeReleases,
  excludeOwnerProjects: excludeOwnerProjects != null ? excludeOwnerProjects() : this.excludeOwnerProjects,
  orgMetadataOnly: orgMetadataOnly != null ? orgMetadataOnly() : this.orgMetadataOnly,
  exclude: exclude != null ? exclude() : this.exclude,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MigrationsStartForOrgRequest &&
          listEquals(repositories, other.repositories) &&
          lockRepositories == other.lockRepositories &&
          excludeMetadata == other.excludeMetadata &&
          excludeGitData == other.excludeGitData &&
          excludeAttachments == other.excludeAttachments &&
          excludeReleases == other.excludeReleases &&
          excludeOwnerProjects == other.excludeOwnerProjects &&
          orgMetadataOnly == other.orgMetadataOnly &&
          listEquals(exclude, other.exclude); } 
@override int get hashCode { return Object.hash(Object.hashAll(repositories), lockRepositories, excludeMetadata, excludeGitData, excludeAttachments, excludeReleases, excludeOwnerProjects, orgMetadataOnly, Object.hashAll(exclude ?? const [])); } 
@override String toString() { return 'MigrationsStartForOrgRequest(repositories: $repositories, lockRepositories: $lockRepositories, excludeMetadata: $excludeMetadata, excludeGitData: $excludeGitData, excludeAttachments: $excludeAttachments, excludeReleases: $excludeReleases, excludeOwnerProjects: $excludeOwnerProjects, orgMetadataOnly: $orgMetadataOnly, exclude: $exclude)'; } 
 }
