// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreatePortalsRequestServersUpdatedTools {const CreatePortalsRequestServersUpdatedTools({required this.name, this.description, this.enabled, });

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
