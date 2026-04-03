// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_created_on.dart';import 'workers_identifier.dart';import 'workers_modified_on.dart';import 'workers_script_name.dart';@immutable final class WorkerScriptSearchWorkersResponseResult {const WorkerScriptSearchWorkersResponseResult({required this.createdOn, required this.id, required this.modifiedOn, required this.scriptName, this.environmentIsDefault, this.environmentName, this.serviceName, });

factory WorkerScriptSearchWorkersResponseResult.fromJson(Map<String, dynamic> json) { return WorkerScriptSearchWorkersResponseResult(
  createdOn: WorkersCreatedOn.fromJson(json['created_on'] as String),
  environmentIsDefault: json['environment_is_default'] as bool?,
  environmentName: json['environment_name'] as String?,
  id: WorkersIdentifier.fromJson(json['id'] as String),
  modifiedOn: WorkersModifiedOn.fromJson(json['modified_on'] as String),
  scriptName: WorkersScriptName.fromJson(json['script_name'] as String),
  serviceName: json['service_name'] as String?,
); }

/// When the script was created.
final WorkersCreatedOn createdOn;

/// Whether the environment is the default environment.
final bool? environmentIsDefault;

/// Name of the environment.
final String? environmentName;

/// Identifier.
final WorkersIdentifier id;

/// When the script was last modified.
final WorkersModifiedOn modifiedOn;

/// Name of the script, used in URLs and route configuration.
final WorkersScriptName scriptName;

/// Name of the service.
final String? serviceName;

Map<String, dynamic> toJson() { return {
  'created_on': createdOn.toJson(),
  'environment_is_default': ?environmentIsDefault,
  'environment_name': ?environmentName,
  'id': id.toJson(),
  'modified_on': modifiedOn.toJson(),
  'script_name': scriptName.toJson(),
  'service_name': ?serviceName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_on') &&
      json.containsKey('id') &&
      json.containsKey('modified_on') &&
      json.containsKey('script_name'); } 
WorkerScriptSearchWorkersResponseResult copyWith({WorkersCreatedOn? createdOn, bool Function()? environmentIsDefault, String Function()? environmentName, WorkersIdentifier? id, WorkersModifiedOn? modifiedOn, WorkersScriptName? scriptName, String Function()? serviceName, }) { return WorkerScriptSearchWorkersResponseResult(
  createdOn: createdOn ?? this.createdOn,
  environmentIsDefault: environmentIsDefault != null ? environmentIsDefault() : this.environmentIsDefault,
  environmentName: environmentName != null ? environmentName() : this.environmentName,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  scriptName: scriptName ?? this.scriptName,
  serviceName: serviceName != null ? serviceName() : this.serviceName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerScriptSearchWorkersResponseResult &&
          createdOn == other.createdOn &&
          environmentIsDefault == other.environmentIsDefault &&
          environmentName == other.environmentName &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          scriptName == other.scriptName &&
          serviceName == other.serviceName; } 
@override int get hashCode { return Object.hash(createdOn, environmentIsDefault, environmentName, id, modifiedOn, scriptName, serviceName); } 
@override String toString() { return 'WorkerScriptSearchWorkersResponseResult(createdOn: $createdOn, environmentIsDefault: $environmentIsDefault, environmentName: $environmentName, id: $id, modifiedOn: $modifiedOn, scriptName: $scriptName, serviceName: $serviceName)'; } 
 }
