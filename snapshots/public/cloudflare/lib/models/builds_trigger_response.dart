// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'builds_build_caching_enabled.dart';import 'builds_build_command.dart';import 'builds_build_token_name.dart';import 'builds_build_token_uuid.dart';import 'builds_created_on.dart';import 'builds_deleted_on.dart';import 'builds_deploy_command.dart';import 'builds_external_script_id.dart';import 'builds_modified_on.dart';import 'builds_root_directory.dart';import 'builds_trigger_name.dart';import 'builds_trigger_uuid.dart';import 'builds_upsert_repo_connection_response.dart';final class BuildsTriggerResponse {const BuildsTriggerResponse({this.branchExcludes, this.branchIncludes, this.buildCachingEnabled, this.buildCommand, this.buildTokenName, this.buildTokenUuid, this.createdOn, this.deletedOn, this.deployCommand, this.externalScriptId, this.modifiedOn, this.pathExcludes, this.pathIncludes, this.repoConnection, this.rootDirectory, this.triggerName, this.triggerUuid, });

factory BuildsTriggerResponse.fromJson(Map<String, dynamic> json) { return BuildsTriggerResponse(
  branchExcludes: (json['branch_excludes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  branchIncludes: (json['branch_includes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  buildCachingEnabled: json['build_caching_enabled'] != null ? BuildsBuildCachingEnabled.fromJson(json['build_caching_enabled'] as bool) : null,
  buildCommand: json['build_command'] != null ? BuildsBuildCommand.fromJson(json['build_command'] as String) : null,
  buildTokenName: json['build_token_name'] != null ? BuildsBuildTokenName.fromJson(json['build_token_name'] as String) : null,
  buildTokenUuid: json['build_token_uuid'] != null ? BuildsBuildTokenUuid.fromJson(json['build_token_uuid'] as String) : null,
  createdOn: json['created_on'] != null ? BuildsCreatedOn.fromJson(json['created_on'] as String) : null,
  deletedOn: json['deleted_on'] != null ? BuildsDeletedOn.fromJson(json['deleted_on'] as String) : null,
  deployCommand: json['deploy_command'] != null ? BuildsDeployCommand.fromJson(json['deploy_command'] as String) : null,
  externalScriptId: json['external_script_id'] != null ? BuildsExternalScriptId.fromJson(json['external_script_id'] as String) : null,
  modifiedOn: json['modified_on'] != null ? BuildsModifiedOn.fromJson(json['modified_on'] as String) : null,
  pathExcludes: (json['path_excludes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  pathIncludes: (json['path_includes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  repoConnection: json['repo_connection'] != null ? BuildsUpsertRepoConnectionResponse.fromJson(json['repo_connection'] as Map<String, dynamic>) : null,
  rootDirectory: json['root_directory'] != null ? BuildsRootDirectory.fromJson(json['root_directory'] as String) : null,
  triggerName: json['trigger_name'] != null ? BuildsTriggerName.fromJson(json['trigger_name'] as String) : null,
  triggerUuid: json['trigger_uuid'] != null ? BuildsTriggerUuid.fromJson(json['trigger_uuid'] as String) : null,
); }

final List<String>? branchExcludes;

final List<String>? branchIncludes;

final BuildsBuildCachingEnabled? buildCachingEnabled;

final BuildsBuildCommand? buildCommand;

final BuildsBuildTokenName? buildTokenName;

final BuildsBuildTokenUuid? buildTokenUuid;

final BuildsCreatedOn? createdOn;

final BuildsDeletedOn? deletedOn;

final BuildsDeployCommand? deployCommand;

final BuildsExternalScriptId? externalScriptId;

final BuildsModifiedOn? modifiedOn;

final List<String>? pathExcludes;

final List<String>? pathIncludes;

final BuildsUpsertRepoConnectionResponse? repoConnection;

final BuildsRootDirectory? rootDirectory;

final BuildsTriggerName? triggerName;

final BuildsTriggerUuid? triggerUuid;

Map<String, dynamic> toJson() { return {
  'branch_excludes': ?branchExcludes,
  'branch_includes': ?branchIncludes,
  if (buildCachingEnabled != null) 'build_caching_enabled': buildCachingEnabled?.toJson(),
  if (buildCommand != null) 'build_command': buildCommand?.toJson(),
  if (buildTokenName != null) 'build_token_name': buildTokenName?.toJson(),
  if (buildTokenUuid != null) 'build_token_uuid': buildTokenUuid?.toJson(),
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  if (deletedOn != null) 'deleted_on': deletedOn?.toJson(),
  if (deployCommand != null) 'deploy_command': deployCommand?.toJson(),
  if (externalScriptId != null) 'external_script_id': externalScriptId?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  'path_excludes': ?pathExcludes,
  'path_includes': ?pathIncludes,
  if (repoConnection != null) 'repo_connection': repoConnection?.toJson(),
  if (rootDirectory != null) 'root_directory': rootDirectory?.toJson(),
  if (triggerName != null) 'trigger_name': triggerName?.toJson(),
  if (triggerUuid != null) 'trigger_uuid': triggerUuid?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'branch_excludes', 'branch_includes', 'build_caching_enabled', 'build_command', 'build_token_name', 'build_token_uuid', 'created_on', 'deleted_on', 'deploy_command', 'external_script_id', 'modified_on', 'path_excludes', 'path_includes', 'repo_connection', 'root_directory', 'trigger_name', 'trigger_uuid'}.contains(key)); } 
BuildsTriggerResponse copyWith({List<String> Function()? branchExcludes, List<String> Function()? branchIncludes, BuildsBuildCachingEnabled Function()? buildCachingEnabled, BuildsBuildCommand Function()? buildCommand, BuildsBuildTokenName Function()? buildTokenName, BuildsBuildTokenUuid Function()? buildTokenUuid, BuildsCreatedOn Function()? createdOn, BuildsDeletedOn? Function()? deletedOn, BuildsDeployCommand Function()? deployCommand, BuildsExternalScriptId Function()? externalScriptId, BuildsModifiedOn Function()? modifiedOn, List<String> Function()? pathExcludes, List<String> Function()? pathIncludes, BuildsUpsertRepoConnectionResponse Function()? repoConnection, BuildsRootDirectory Function()? rootDirectory, BuildsTriggerName Function()? triggerName, BuildsTriggerUuid Function()? triggerUuid, }) { return BuildsTriggerResponse(
  branchExcludes: branchExcludes != null ? branchExcludes() : this.branchExcludes,
  branchIncludes: branchIncludes != null ? branchIncludes() : this.branchIncludes,
  buildCachingEnabled: buildCachingEnabled != null ? buildCachingEnabled() : this.buildCachingEnabled,
  buildCommand: buildCommand != null ? buildCommand() : this.buildCommand,
  buildTokenName: buildTokenName != null ? buildTokenName() : this.buildTokenName,
  buildTokenUuid: buildTokenUuid != null ? buildTokenUuid() : this.buildTokenUuid,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  deletedOn: deletedOn != null ? deletedOn() : this.deletedOn,
  deployCommand: deployCommand != null ? deployCommand() : this.deployCommand,
  externalScriptId: externalScriptId != null ? externalScriptId() : this.externalScriptId,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  pathExcludes: pathExcludes != null ? pathExcludes() : this.pathExcludes,
  pathIncludes: pathIncludes != null ? pathIncludes() : this.pathIncludes,
  repoConnection: repoConnection != null ? repoConnection() : this.repoConnection,
  rootDirectory: rootDirectory != null ? rootDirectory() : this.rootDirectory,
  triggerName: triggerName != null ? triggerName() : this.triggerName,
  triggerUuid: triggerUuid != null ? triggerUuid() : this.triggerUuid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsTriggerResponse &&
          listEquals(branchExcludes, other.branchExcludes) &&
          listEquals(branchIncludes, other.branchIncludes) &&
          buildCachingEnabled == other.buildCachingEnabled &&
          buildCommand == other.buildCommand &&
          buildTokenName == other.buildTokenName &&
          buildTokenUuid == other.buildTokenUuid &&
          createdOn == other.createdOn &&
          deletedOn == other.deletedOn &&
          deployCommand == other.deployCommand &&
          externalScriptId == other.externalScriptId &&
          modifiedOn == other.modifiedOn &&
          listEquals(pathExcludes, other.pathExcludes) &&
          listEquals(pathIncludes, other.pathIncludes) &&
          repoConnection == other.repoConnection &&
          rootDirectory == other.rootDirectory &&
          triggerName == other.triggerName &&
          triggerUuid == other.triggerUuid; } 
@override int get hashCode { return Object.hash(Object.hashAll(branchExcludes ?? const []), Object.hashAll(branchIncludes ?? const []), buildCachingEnabled, buildCommand, buildTokenName, buildTokenUuid, createdOn, deletedOn, deployCommand, externalScriptId, modifiedOn, Object.hashAll(pathExcludes ?? const []), Object.hashAll(pathIncludes ?? const []), repoConnection, rootDirectory, triggerName, triggerUuid); } 
@override String toString() { return 'BuildsTriggerResponse(branchExcludes: $branchExcludes, branchIncludes: $branchIncludes, buildCachingEnabled: $buildCachingEnabled, buildCommand: $buildCommand, buildTokenName: $buildTokenName, buildTokenUuid: $buildTokenUuid, createdOn: $createdOn, deletedOn: $deletedOn, deployCommand: $deployCommand, externalScriptId: $externalScriptId, modifiedOn: $modifiedOn, pathExcludes: $pathExcludes, pathIncludes: $pathIncludes, repoConnection: $repoConnection, rootDirectory: $rootDirectory, triggerName: $triggerName, triggerUuid: $triggerUuid)'; } 
 }
