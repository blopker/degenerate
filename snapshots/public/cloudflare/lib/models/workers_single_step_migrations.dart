// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_single_step_migrations_renamed_classes.dart';import 'workers_single_step_migrations_transferred_classes.dart';/// A single set of migrations to apply.
@immutable final class WorkersSingleStepMigrations {const WorkersSingleStepMigrations({this.newTag, this.oldTag, this.deletedClasses, this.newClasses, this.newSqliteClasses, this.renamedClasses, this.transferredClasses, });

factory WorkersSingleStepMigrations.fromJson(Map<String, dynamic> json) { return WorkersSingleStepMigrations(
  newTag: json['new_tag'] as String?,
  oldTag: json['old_tag'] as String?,
  deletedClasses: (json['deleted_classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  newClasses: (json['new_classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  newSqliteClasses: (json['new_sqlite_classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  renamedClasses: (json['renamed_classes'] as List<dynamic>?)?.map((e) => WorkersSingleStepMigrationsRenamedClasses.fromJson(e as Map<String, dynamic>)).toList(),
  transferredClasses: (json['transferred_classes'] as List<dynamic>?)?.map((e) => WorkersSingleStepMigrationsTransferredClasses.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Tag to set as the latest migration tag.
final String? newTag;

/// Tag used to verify against the latest migration tag for this Worker. If they don't match, the upload is rejected.
final String? oldTag;

/// A list of classes to delete Durable Object namespaces from.
final List<String>? deletedClasses;

/// A list of classes to create Durable Object namespaces from.
final List<String>? newClasses;

/// A list of classes to create Durable Object namespaces with SQLite from.
final List<String>? newSqliteClasses;

/// A list of classes with Durable Object namespaces that were renamed.
final List<WorkersSingleStepMigrationsRenamedClasses>? renamedClasses;

/// A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
final List<WorkersSingleStepMigrationsTransferredClasses>? transferredClasses;

Map<String, dynamic> toJson() { return {
  'new_tag': ?newTag,
  'old_tag': ?oldTag,
  'deleted_classes': ?deletedClasses,
  'new_classes': ?newClasses,
  'new_sqlite_classes': ?newSqliteClasses,
  if (renamedClasses != null) 'renamed_classes': renamedClasses?.map((e) => e.toJson()).toList(),
  if (transferredClasses != null) 'transferred_classes': transferredClasses?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'new_tag', 'old_tag', 'deleted_classes', 'new_classes', 'new_sqlite_classes', 'renamed_classes', 'transferred_classes'}.contains(key)); } 
WorkersSingleStepMigrations copyWith({String Function()? newTag, String Function()? oldTag, List<String> Function()? deletedClasses, List<String> Function()? newClasses, List<String> Function()? newSqliteClasses, List<WorkersSingleStepMigrationsRenamedClasses> Function()? renamedClasses, List<WorkersSingleStepMigrationsTransferredClasses> Function()? transferredClasses, }) { return WorkersSingleStepMigrations(
  newTag: newTag != null ? newTag() : this.newTag,
  oldTag: oldTag != null ? oldTag() : this.oldTag,
  deletedClasses: deletedClasses != null ? deletedClasses() : this.deletedClasses,
  newClasses: newClasses != null ? newClasses() : this.newClasses,
  newSqliteClasses: newSqliteClasses != null ? newSqliteClasses() : this.newSqliteClasses,
  renamedClasses: renamedClasses != null ? renamedClasses() : this.renamedClasses,
  transferredClasses: transferredClasses != null ? transferredClasses() : this.transferredClasses,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersSingleStepMigrations &&
          newTag == other.newTag &&
          oldTag == other.oldTag &&
          listEquals(deletedClasses, other.deletedClasses) &&
          listEquals(newClasses, other.newClasses) &&
          listEquals(newSqliteClasses, other.newSqliteClasses) &&
          listEquals(renamedClasses, other.renamedClasses) &&
          listEquals(transferredClasses, other.transferredClasses); } 
@override int get hashCode { return Object.hash(newTag, oldTag, Object.hashAll(deletedClasses ?? const []), Object.hashAll(newClasses ?? const []), Object.hashAll(newSqliteClasses ?? const []), Object.hashAll(renamedClasses ?? const []), Object.hashAll(transferredClasses ?? const [])); } 
@override String toString() { return 'WorkersSingleStepMigrations(newTag: $newTag, oldTag: $oldTag, deletedClasses: $deletedClasses, newClasses: $newClasses, newSqliteClasses: $newSqliteClasses, renamedClasses: $renamedClasses, transferredClasses: $transferredClasses)'; } 
 }
