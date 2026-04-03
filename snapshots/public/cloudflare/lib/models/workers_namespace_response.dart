// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_created_on.dart';import 'workers_dispatch_namespace_name.dart';import 'workers_identifier.dart';import 'workers_modified_on.dart';import 'workers_trusted_workers.dart';import 'workers_uuid.dart';/// The current number of scripts in this Dispatch Namespace.
extension type const WorkersScriptCount(int value) {
factory WorkersScriptCount.fromJson(num json) => WorkersScriptCount(json.toInt());

num toJson() => value;

}
@immutable final class WorkersNamespaceResponse {const WorkersNamespaceResponse({this.createdBy, this.createdOn, this.modifiedBy, this.modifiedOn, this.namespaceId, this.namespaceName, this.scriptCount, this.trustedWorkers, });

factory WorkersNamespaceResponse.fromJson(Map<String, dynamic> json) { return WorkersNamespaceResponse(
  createdBy: json['created_by'] != null ? WorkersIdentifier.fromJson(json['created_by'] as String) : null,
  createdOn: json['created_on'] != null ? WorkersCreatedOn.fromJson(json['created_on'] as String) : null,
  modifiedBy: json['modified_by'] != null ? WorkersIdentifier.fromJson(json['modified_by'] as String) : null,
  modifiedOn: json['modified_on'] != null ? WorkersModifiedOn.fromJson(json['modified_on'] as String) : null,
  namespaceId: json['namespace_id'] != null ? WorkersUuid.fromJson(json['namespace_id'] as String) : null,
  namespaceName: json['namespace_name'] != null ? WorkersDispatchNamespaceName.fromJson(json['namespace_name'] as String) : null,
  scriptCount: json['script_count'] != null ? WorkersScriptCount.fromJson(json['script_count'] as num) : null,
  trustedWorkers: json['trusted_workers'] != null ? WorkersTrustedWorkers.fromJson(json['trusted_workers'] as bool) : null,
); }

/// Identifier.
final WorkersIdentifier? createdBy;

/// When the script was created.
final WorkersCreatedOn? createdOn;

/// Identifier.
final WorkersIdentifier? modifiedBy;

/// When the script was last modified.
final WorkersModifiedOn? modifiedOn;

final WorkersUuid? namespaceId;

/// Name of the Workers for Platforms dispatch namespace.
final WorkersDispatchNamespaceName? namespaceName;

final WorkersScriptCount? scriptCount;

final WorkersTrustedWorkers? trustedWorkers;

Map<String, dynamic> toJson() { return {
  if (createdBy != null) 'created_by': createdBy?.toJson(),
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  if (modifiedBy != null) 'modified_by': modifiedBy?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  if (namespaceId != null) 'namespace_id': namespaceId?.toJson(),
  if (namespaceName != null) 'namespace_name': namespaceName?.toJson(),
  if (scriptCount != null) 'script_count': scriptCount?.toJson(),
  if (trustedWorkers != null) 'trusted_workers': trustedWorkers?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_by', 'created_on', 'modified_by', 'modified_on', 'namespace_id', 'namespace_name', 'script_count', 'trusted_workers'}.contains(key)); } 
WorkersNamespaceResponse copyWith({WorkersIdentifier Function()? createdBy, WorkersCreatedOn Function()? createdOn, WorkersIdentifier Function()? modifiedBy, WorkersModifiedOn Function()? modifiedOn, WorkersUuid Function()? namespaceId, WorkersDispatchNamespaceName Function()? namespaceName, WorkersScriptCount Function()? scriptCount, WorkersTrustedWorkers Function()? trustedWorkers, }) { return WorkersNamespaceResponse(
  createdBy: createdBy != null ? createdBy() : this.createdBy,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  modifiedBy: modifiedBy != null ? modifiedBy() : this.modifiedBy,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  namespaceId: namespaceId != null ? namespaceId() : this.namespaceId,
  namespaceName: namespaceName != null ? namespaceName() : this.namespaceName,
  scriptCount: scriptCount != null ? scriptCount() : this.scriptCount,
  trustedWorkers: trustedWorkers != null ? trustedWorkers() : this.trustedWorkers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersNamespaceResponse &&
          createdBy == other.createdBy &&
          createdOn == other.createdOn &&
          modifiedBy == other.modifiedBy &&
          modifiedOn == other.modifiedOn &&
          namespaceId == other.namespaceId &&
          namespaceName == other.namespaceName &&
          scriptCount == other.scriptCount &&
          trustedWorkers == other.trustedWorkers; } 
@override int get hashCode { return Object.hash(createdBy, createdOn, modifiedBy, modifiedOn, namespaceId, namespaceName, scriptCount, trustedWorkers); } 
@override String toString() { return 'WorkersNamespaceResponse(createdBy: $createdBy, createdOn: $createdOn, modifiedBy: $modifiedBy, modifiedOn: $modifiedOn, namespaceId: $namespaceId, namespaceName: $namespaceName, scriptCount: $scriptCount, trustedWorkers: $trustedWorkers)'; } 
 }
