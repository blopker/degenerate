// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_migration_step.dart';@immutable final class WorkersMultipleStepMigrations {const WorkersMultipleStepMigrations({this.newTag, this.oldTag, this.steps, });

factory WorkersMultipleStepMigrations.fromJson(Map<String, dynamic> json) { return WorkersMultipleStepMigrations(
  newTag: json['new_tag'] as String?,
  oldTag: json['old_tag'] as String?,
  steps: (json['steps'] as List<dynamic>?)?.map((e) => WorkersMigrationStep.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Tag to set as the latest migration tag.
final String? newTag;

/// Tag used to verify against the latest migration tag for this Worker. If they don't match, the upload is rejected.
final String? oldTag;

/// Migrations to apply in order.
final List<WorkersMigrationStep>? steps;

Map<String, dynamic> toJson() { return {
  'new_tag': ?newTag,
  'old_tag': ?oldTag,
  if (steps != null) 'steps': steps?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'new_tag', 'old_tag', 'steps'}.contains(key)); } 
WorkersMultipleStepMigrations copyWith({String Function()? newTag, String Function()? oldTag, List<WorkersMigrationStep> Function()? steps, }) { return WorkersMultipleStepMigrations(
  newTag: newTag != null ? newTag() : this.newTag,
  oldTag: oldTag != null ? oldTag() : this.oldTag,
  steps: steps != null ? steps() : this.steps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersMultipleStepMigrations &&
          newTag == other.newTag &&
          oldTag == other.oldTag &&
          listEquals(steps, other.steps); } 
@override int get hashCode { return Object.hash(newTag, oldTag, Object.hashAll(steps ?? const [])); } 
@override String toString() { return 'WorkersMultipleStepMigrations(newTag: $newTag, oldTag: $oldTag, steps: $steps)'; } 
 }
