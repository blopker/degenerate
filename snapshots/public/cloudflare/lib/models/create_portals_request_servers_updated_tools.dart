// GENERATED CODE - DO NOT MODIFY BY HAND

final class CreatePortalsRequestServersUpdatedTools {const CreatePortalsRequestServersUpdatedTools({this.description, this.enabled, required this.name, });

factory CreatePortalsRequestServersUpdatedTools.fromJson(Map<String, dynamic> json) { return CreatePortalsRequestServersUpdatedTools(
  description: json['description'] as String?,
  enabled: json['enabled'] as bool?,
  name: json['name'] as String,
); }

final String? description;

final bool? enabled;

final String name;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'enabled': ?enabled,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
CreatePortalsRequestServersUpdatedTools copyWith({String Function()? description, bool Function()? enabled, String? name, }) { return CreatePortalsRequestServersUpdatedTools(
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreatePortalsRequestServersUpdatedTools &&
          description == other.description &&
          enabled == other.enabled &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, enabled, name); } 
@override String toString() { return 'CreatePortalsRequestServersUpdatedTools(description: $description, enabled: $enabled, name: $name)'; } 
 }
