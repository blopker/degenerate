// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersBindingKindInherit {const WorkersBindingKindInherit({required this.name, this.oldName, required this.type, this.versionId = 'latest', });

factory WorkersBindingKindInherit.fromJson(Map<String, dynamic> json) { return WorkersBindingKindInherit(
  name: json['name'] as String,
  oldName: json['old_name'] as String?,
  type: json['type'] as String,
  versionId: json.containsKey('version_id') ? json['version_id'] as String : 'latest',
); }

/// The name of the inherited binding.
final String name;

/// The old name of the inherited binding. If set, the binding will be renamed from `old_name` to `name` in the new version. If not set, the binding will keep the same name between versions.
final String? oldName;

/// The kind of resource that the binding provides.
final String type;

/// Identifier for the version to inherit the binding from, which can be the version ID or the literal "latest" to inherit from the latest version. Defaults to inheriting the binding from the latest version.
final String versionId;

Map<String, dynamic> toJson() { return {
  'name': name,
  'old_name': ?oldName,
  'type': type,
  'version_id': versionId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('type') && json['type'] is String; } 
WorkersBindingKindInherit copyWith({String? name, String Function()? oldName, String? type, String Function()? versionId, }) { return WorkersBindingKindInherit(
  name: name ?? this.name,
  oldName: oldName != null ? oldName() : this.oldName,
  type: type ?? this.type,
  versionId: versionId != null ? versionId() : this.versionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindInherit &&
          name == other.name &&
          oldName == other.oldName &&
          type == other.type &&
          versionId == other.versionId; } 
@override int get hashCode { return Object.hash(name, oldName, type, versionId); } 
@override String toString() { return 'WorkersBindingKindInherit(name: $name, oldName: $oldName, type: $type, versionId: $versionId)'; } 
 }
