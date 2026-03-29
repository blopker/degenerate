// GENERATED CODE - DO NOT MODIFY BY HAND

import 'simple_classroom_organization.dart';/// A GitHub Classroom classroom
final class Classroom {const Classroom({required this.id, required this.name, required this.archived, required this.organization, required this.url, });

factory Classroom.fromJson(Map<String, dynamic> json) { return Classroom(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  archived: json['archived'] as bool,
  organization: SimpleClassroomOrganization.fromJson(json['organization'] as Map<String, dynamic>),
  url: json['url'] as String,
); }

/// Unique identifier of the classroom.
final int id;

/// The name of the classroom.
final String name;

/// Whether classroom is archived.
final bool archived;

final SimpleClassroomOrganization organization;

/// The URL of the classroom on GitHub Classroom.
final String url;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  'archived': archived,
  'organization': organization.toJson(),
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('archived') && json['archived'] is bool &&
      json.containsKey('organization') &&
      json.containsKey('url') && json['url'] is String; } 
Classroom copyWith({int? id, String? name, bool? archived, SimpleClassroomOrganization? organization, String? url, }) { return Classroom(
  id: id ?? this.id,
  name: name ?? this.name,
  archived: archived ?? this.archived,
  organization: organization ?? this.organization,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Classroom &&
          id == other.id &&
          name == other.name &&
          archived == other.archived &&
          organization == other.organization &&
          url == other.url; } 
@override int get hashCode { return Object.hash(id, name, archived, organization, url); } 
@override String toString() { return 'Classroom(id: $id, name: $name, archived: $archived, organization: $organization, url: $url)'; } 
 }
