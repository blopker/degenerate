// GENERATED CODE - DO NOT MODIFY BY HAND

final class ProjectServiceAccountCreateRequest {const ProjectServiceAccountCreateRequest({required this.name});

factory ProjectServiceAccountCreateRequest.fromJson(Map<String, dynamic> json) { return ProjectServiceAccountCreateRequest(
  name: json['name'] as String,
); }

/// The name of the service account being created.
final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
ProjectServiceAccountCreateRequest copyWith({String? name}) { return ProjectServiceAccountCreateRequest(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProjectServiceAccountCreateRequest &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'ProjectServiceAccountCreateRequest(name: $name)'; } 
 }
