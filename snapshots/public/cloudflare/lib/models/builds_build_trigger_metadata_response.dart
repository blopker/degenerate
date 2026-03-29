// GENERATED CODE - DO NOT MODIFY BY HAND

import 'builds_branch.dart';import 'builds_build_command.dart';import 'builds_build_token_name.dart';import 'builds_build_token_uuid.dart';import 'builds_deploy_command.dart';import 'builds_provider_account_name.dart';import 'builds_repo_name.dart';import 'builds_root_directory.dart';import 'builds_scm_provider_type.dart';final class BuildsBuildTriggerSource {const BuildsBuildTriggerSource._(this.value);

factory BuildsBuildTriggerSource.fromJson(String json) { return switch (json) {
  'push' => push,
  'pull_request' => pullRequest,
  'manual' => manual,
  'api' => api,
  _ => BuildsBuildTriggerSource._(json),
}; }

static const BuildsBuildTriggerSource push = BuildsBuildTriggerSource._('push');

static const BuildsBuildTriggerSource pullRequest = BuildsBuildTriggerSource._('pull_request');

static const BuildsBuildTriggerSource manual = BuildsBuildTriggerSource._('manual');

static const BuildsBuildTriggerSource api = BuildsBuildTriggerSource._('api');

static const List<BuildsBuildTriggerSource> values = [push, pullRequest, manual, api];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BuildsBuildTriggerSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BuildsBuildTriggerSource($value)'; } 
 }
/// Git commit hash
extension type const BuildsCommitHash(String value) {
factory BuildsCommitHash.fromJson(String json) => BuildsCommitHash(json);

String toJson() => value;

}
final class BuildsBuildTriggerMetadataResponse {const BuildsBuildTriggerMetadataResponse({this.author, this.branch, this.buildCommand, this.buildTokenName, this.buildTokenUuid, this.buildTriggerSource, this.commitHash, this.commitMessage, this.deployCommand, this.environmentVariables, this.providerAccountName, this.providerType, this.repoName, this.rootDirectory, });

factory BuildsBuildTriggerMetadataResponse.fromJson(Map<String, dynamic> json) { return BuildsBuildTriggerMetadataResponse(
  author: json['author'] as String?,
  branch: json['branch'] != null ? BuildsBranch.fromJson(json['branch'] as String) : null,
  buildCommand: json['build_command'] != null ? BuildsBuildCommand.fromJson(json['build_command'] as String) : null,
  buildTokenName: json['build_token_name'] != null ? BuildsBuildTokenName.fromJson(json['build_token_name'] as String) : null,
  buildTokenUuid: json['build_token_uuid'] != null ? BuildsBuildTokenUuid.fromJson(json['build_token_uuid'] as String) : null,
  buildTriggerSource: json['build_trigger_source'] != null ? BuildsBuildTriggerSource.fromJson(json['build_trigger_source'] as String) : null,
  commitHash: json['commit_hash'] != null ? BuildsCommitHash.fromJson(json['commit_hash'] as String) : null,
  commitMessage: json['commit_message'] as String?,
  deployCommand: json['deploy_command'] != null ? BuildsDeployCommand.fromJson(json['deploy_command'] as String) : null,
  environmentVariables: (json['environment_variables'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  providerAccountName: json['provider_account_name'] != null ? BuildsProviderAccountName.fromJson(json['provider_account_name'] as String) : null,
  providerType: json['provider_type'] != null ? BuildsScmProviderType.fromJson(json['provider_type'] as String) : null,
  repoName: json['repo_name'] != null ? BuildsRepoName.fromJson(json['repo_name'] as String) : null,
  rootDirectory: json['root_directory'] != null ? BuildsRootDirectory.fromJson(json['root_directory'] as String) : null,
); }

final String? author;

final BuildsBranch? branch;

final BuildsBuildCommand? buildCommand;

final BuildsBuildTokenName? buildTokenName;

final BuildsBuildTokenUuid? buildTokenUuid;

final BuildsBuildTriggerSource? buildTriggerSource;

final BuildsCommitHash? commitHash;

final String? commitMessage;

final BuildsDeployCommand? deployCommand;

final Map<String,String>? environmentVariables;

final BuildsProviderAccountName? providerAccountName;

final BuildsScmProviderType? providerType;

final BuildsRepoName? repoName;

final BuildsRootDirectory? rootDirectory;

Map<String, dynamic> toJson() { return {
  'author': ?author,
  if (branch != null) 'branch': branch?.toJson(),
  if (buildCommand != null) 'build_command': buildCommand?.toJson(),
  if (buildTokenName != null) 'build_token_name': buildTokenName?.toJson(),
  if (buildTokenUuid != null) 'build_token_uuid': buildTokenUuid?.toJson(),
  if (buildTriggerSource != null) 'build_trigger_source': buildTriggerSource?.toJson(),
  if (commitHash != null) 'commit_hash': commitHash?.toJson(),
  'commit_message': ?commitMessage,
  if (deployCommand != null) 'deploy_command': deployCommand?.toJson(),
  'environment_variables': ?environmentVariables,
  if (providerAccountName != null) 'provider_account_name': providerAccountName?.toJson(),
  if (providerType != null) 'provider_type': providerType?.toJson(),
  if (repoName != null) 'repo_name': repoName?.toJson(),
  if (rootDirectory != null) 'root_directory': rootDirectory?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BuildsBuildTriggerMetadataResponse copyWith({String Function()? author, BuildsBranch Function()? branch, BuildsBuildCommand Function()? buildCommand, BuildsBuildTokenName Function()? buildTokenName, BuildsBuildTokenUuid Function()? buildTokenUuid, BuildsBuildTriggerSource Function()? buildTriggerSource, BuildsCommitHash Function()? commitHash, String Function()? commitMessage, BuildsDeployCommand Function()? deployCommand, Map<String, String> Function()? environmentVariables, BuildsProviderAccountName Function()? providerAccountName, BuildsScmProviderType Function()? providerType, BuildsRepoName Function()? repoName, BuildsRootDirectory Function()? rootDirectory, }) { return BuildsBuildTriggerMetadataResponse(
  author: author != null ? author() : this.author,
  branch: branch != null ? branch() : this.branch,
  buildCommand: buildCommand != null ? buildCommand() : this.buildCommand,
  buildTokenName: buildTokenName != null ? buildTokenName() : this.buildTokenName,
  buildTokenUuid: buildTokenUuid != null ? buildTokenUuid() : this.buildTokenUuid,
  buildTriggerSource: buildTriggerSource != null ? buildTriggerSource() : this.buildTriggerSource,
  commitHash: commitHash != null ? commitHash() : this.commitHash,
  commitMessage: commitMessage != null ? commitMessage() : this.commitMessage,
  deployCommand: deployCommand != null ? deployCommand() : this.deployCommand,
  environmentVariables: environmentVariables != null ? environmentVariables() : this.environmentVariables,
  providerAccountName: providerAccountName != null ? providerAccountName() : this.providerAccountName,
  providerType: providerType != null ? providerType() : this.providerType,
  repoName: repoName != null ? repoName() : this.repoName,
  rootDirectory: rootDirectory != null ? rootDirectory() : this.rootDirectory,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsBuildTriggerMetadataResponse &&
          author == other.author &&
          branch == other.branch &&
          buildCommand == other.buildCommand &&
          buildTokenName == other.buildTokenName &&
          buildTokenUuid == other.buildTokenUuid &&
          buildTriggerSource == other.buildTriggerSource &&
          commitHash == other.commitHash &&
          commitMessage == other.commitMessage &&
          deployCommand == other.deployCommand &&
          environmentVariables == other.environmentVariables &&
          providerAccountName == other.providerAccountName &&
          providerType == other.providerType &&
          repoName == other.repoName &&
          rootDirectory == other.rootDirectory; } 
@override int get hashCode { return Object.hash(author, branch, buildCommand, buildTokenName, buildTokenUuid, buildTriggerSource, commitHash, commitMessage, deployCommand, environmentVariables, providerAccountName, providerType, repoName, rootDirectory); } 
@override String toString() { return 'BuildsBuildTriggerMetadataResponse(author: $author, branch: $branch, buildCommand: $buildCommand, buildTokenName: $buildTokenName, buildTokenUuid: $buildTokenUuid, buildTriggerSource: $buildTriggerSource, commitHash: $commitHash, commitMessage: $commitMessage, deployCommand: $deployCommand, environmentVariables: $environmentVariables, providerAccountName: $providerAccountName, providerType: $providerType, repoName: $repoName, rootDirectory: $rootDirectory)'; } 
 }
