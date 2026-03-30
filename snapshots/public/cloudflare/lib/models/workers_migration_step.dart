// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_migration_step_renamed_classes.dart';import 'workers_migration_step_transferred_classes.dart';final class WorkersMigrationStep {const WorkersMigrationStep({this.deletedClasses, this.newClasses, this.newSqliteClasses, this.renamedClasses, this.transferredClasses, });

factory WorkersMigrationStep.fromJson(Map<String, dynamic> json) { return WorkersMigrationStep(
  deletedClasses: (json['deleted_classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  newClasses: (json['new_classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  newSqliteClasses: (json['new_sqlite_classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  renamedClasses: (json['renamed_classes'] as List<dynamic>?)?.map((e) => WorkersMigrationStepRenamedClasses.fromJson(e as Map<String, dynamic>)).toList(),
  transferredClasses: (json['transferred_classes'] as List<dynamic>?)?.map((e) => WorkersMigrationStepTransferredClasses.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// A list of classes to delete Durable Object namespaces from.
final List<String>? deletedClasses;

/// A list of classes to create Durable Object namespaces from.
final List<String>? newClasses;

/// A list of classes to create Durable Object namespaces with SQLite from.
final List<String>? newSqliteClasses;

/// A list of classes with Durable Object namespaces that were renamed.
final List<WorkersMigrationStepRenamedClasses>? renamedClasses;

/// A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
final List<WorkersMigrationStepTransferredClasses>? transferredClasses;

Map<String, dynamic> toJson() { return {
  'deleted_classes': ?deletedClasses,
  'new_classes': ?newClasses,
  'new_sqlite_classes': ?newSqliteClasses,
  if (renamedClasses != null) 'renamed_classes': renamedClasses?.map((e) => e.toJson()).toList(),
  if (transferredClasses != null) 'transferred_classes': transferredClasses?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deleted_classes', 'new_classes', 'new_sqlite_classes', 'renamed_classes', 'transferred_classes'}.contains(key)); } 
WorkersMigrationStep copyWith({List<String> Function()? deletedClasses, List<String> Function()? newClasses, List<String> Function()? newSqliteClasses, List<WorkersMigrationStepRenamedClasses> Function()? renamedClasses, List<WorkersMigrationStepTransferredClasses> Function()? transferredClasses, }) { return WorkersMigrationStep(
  deletedClasses: deletedClasses != null ? deletedClasses() : this.deletedClasses,
  newClasses: newClasses != null ? newClasses() : this.newClasses,
  newSqliteClasses: newSqliteClasses != null ? newSqliteClasses() : this.newSqliteClasses,
  renamedClasses: renamedClasses != null ? renamedClasses() : this.renamedClasses,
  transferredClasses: transferredClasses != null ? transferredClasses() : this.transferredClasses,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersMigrationStep &&
          listEquals(deletedClasses, other.deletedClasses) &&
          listEquals(newClasses, other.newClasses) &&
          listEquals(newSqliteClasses, other.newSqliteClasses) &&
          listEquals(renamedClasses, other.renamedClasses) &&
          listEquals(transferredClasses, other.transferredClasses); } 
@override int get hashCode { return Object.hash(Object.hashAll(deletedClasses ?? const []), Object.hashAll(newClasses ?? const []), Object.hashAll(newSqliteClasses ?? const []), Object.hashAll(renamedClasses ?? const []), Object.hashAll(transferredClasses ?? const [])); } 
@override String toString() { return 'WorkersMigrationStep(deletedClasses: $deletedClasses, newClasses: $newClasses, newSqliteClasses: $newSqliteClasses, renamedClasses: $renamedClasses, transferredClasses: $transferredClasses)'; } 
 }
