// GENERATED CODE - DO NOT MODIFY BY HAND

import 'builds_created_on.dart';import 'builds_deleted_on.dart';import 'builds_modified_on.dart';import 'builds_provider_account_id.dart';import 'builds_provider_account_name.dart';import 'builds_repo_connection_uuid.dart';import 'builds_repo_id.dart';import 'builds_repo_name.dart';import 'builds_scm_provider_type.dart';final class BuildsUpsertRepoConnectionResponse {const BuildsUpsertRepoConnectionResponse({this.createdOn, this.deletedOn, this.modifiedOn, this.providerAccountId, this.providerAccountName, this.providerType, this.repoConnectionUuid, this.repoId, this.repoName, });

factory BuildsUpsertRepoConnectionResponse.fromJson(Map<String, dynamic> json) { return BuildsUpsertRepoConnectionResponse(
  createdOn: json['created_on'] != null ? BuildsCreatedOn.fromJson(json['created_on'] as String) : null,
  deletedOn: json['deleted_on'] != null ? BuildsDeletedOn.fromJson(json['deleted_on'] as String) : null,
  modifiedOn: json['modified_on'] != null ? BuildsModifiedOn.fromJson(json['modified_on'] as String) : null,
  providerAccountId: json['provider_account_id'] != null ? BuildsProviderAccountId.fromJson(json['provider_account_id'] as String) : null,
  providerAccountName: json['provider_account_name'] != null ? BuildsProviderAccountName.fromJson(json['provider_account_name'] as String) : null,
  providerType: json['provider_type'] != null ? BuildsScmProviderType.fromJson(json['provider_type'] as String) : null,
  repoConnectionUuid: json['repo_connection_uuid'] != null ? BuildsRepoConnectionUuid.fromJson(json['repo_connection_uuid'] as String) : null,
  repoId: json['repo_id'] != null ? BuildsRepoId.fromJson(json['repo_id'] as String) : null,
  repoName: json['repo_name'] != null ? BuildsRepoName.fromJson(json['repo_name'] as String) : null,
); }

final BuildsCreatedOn? createdOn;

final BuildsDeletedOn? deletedOn;

final BuildsModifiedOn? modifiedOn;

final BuildsProviderAccountId? providerAccountId;

final BuildsProviderAccountName? providerAccountName;

final BuildsScmProviderType? providerType;

final BuildsRepoConnectionUuid? repoConnectionUuid;

final BuildsRepoId? repoId;

final BuildsRepoName? repoName;

Map<String, dynamic> toJson() { return {
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  if (deletedOn != null) 'deleted_on': deletedOn?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  if (providerAccountId != null) 'provider_account_id': providerAccountId?.toJson(),
  if (providerAccountName != null) 'provider_account_name': providerAccountName?.toJson(),
  if (providerType != null) 'provider_type': providerType?.toJson(),
  if (repoConnectionUuid != null) 'repo_connection_uuid': repoConnectionUuid?.toJson(),
  if (repoId != null) 'repo_id': repoId?.toJson(),
  if (repoName != null) 'repo_name': repoName?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BuildsUpsertRepoConnectionResponse copyWith({BuildsCreatedOn Function()? createdOn, BuildsDeletedOn? Function()? deletedOn, BuildsModifiedOn Function()? modifiedOn, BuildsProviderAccountId Function()? providerAccountId, BuildsProviderAccountName Function()? providerAccountName, BuildsScmProviderType Function()? providerType, BuildsRepoConnectionUuid Function()? repoConnectionUuid, BuildsRepoId Function()? repoId, BuildsRepoName Function()? repoName, }) { return BuildsUpsertRepoConnectionResponse(
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  deletedOn: deletedOn != null ? deletedOn() : this.deletedOn,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  providerAccountId: providerAccountId != null ? providerAccountId() : this.providerAccountId,
  providerAccountName: providerAccountName != null ? providerAccountName() : this.providerAccountName,
  providerType: providerType != null ? providerType() : this.providerType,
  repoConnectionUuid: repoConnectionUuid != null ? repoConnectionUuid() : this.repoConnectionUuid,
  repoId: repoId != null ? repoId() : this.repoId,
  repoName: repoName != null ? repoName() : this.repoName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsUpsertRepoConnectionResponse &&
          createdOn == other.createdOn &&
          deletedOn == other.deletedOn &&
          modifiedOn == other.modifiedOn &&
          providerAccountId == other.providerAccountId &&
          providerAccountName == other.providerAccountName &&
          providerType == other.providerType &&
          repoConnectionUuid == other.repoConnectionUuid &&
          repoId == other.repoId &&
          repoName == other.repoName; } 
@override int get hashCode { return Object.hash(createdOn, deletedOn, modifiedOn, providerAccountId, providerAccountName, providerType, repoConnectionUuid, repoId, repoName); } 
@override String toString() { return 'BuildsUpsertRepoConnectionResponse(createdOn: $createdOn, deletedOn: $deletedOn, modifiedOn: $modifiedOn, providerAccountId: $providerAccountId, providerAccountName: $providerAccountName, providerType: $providerType, repoConnectionUuid: $repoConnectionUuid, repoId: $repoId, repoName: $repoName)'; } 
 }
