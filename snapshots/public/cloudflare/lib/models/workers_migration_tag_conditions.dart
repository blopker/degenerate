// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersMigrationTagConditions {const WorkersMigrationTagConditions({this.newTag, this.oldTag, });

factory WorkersMigrationTagConditions.fromJson(Map<String, dynamic> json) { return WorkersMigrationTagConditions(
  newTag: json['new_tag'] as String?,
  oldTag: json['old_tag'] as String?,
); }

/// Tag to set as the latest migration tag.
final String? newTag;

/// Tag used to verify against the latest migration tag for this Worker. If they don't match, the upload is rejected.
final String? oldTag;

Map<String, dynamic> toJson() { return {
  'new_tag': ?newTag,
  'old_tag': ?oldTag,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WorkersMigrationTagConditions copyWith({String Function()? newTag, String Function()? oldTag, }) { return WorkersMigrationTagConditions(
  newTag: newTag != null ? newTag() : this.newTag,
  oldTag: oldTag != null ? oldTag() : this.oldTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersMigrationTagConditions &&
          newTag == other.newTag &&
          oldTag == other.oldTag; } 
@override int get hashCode { return Object.hash(newTag, oldTag); } 
@override String toString() { return 'WorkersMigrationTagConditions(newTag: $newTag, oldTag: $oldTag)'; } 
 }
