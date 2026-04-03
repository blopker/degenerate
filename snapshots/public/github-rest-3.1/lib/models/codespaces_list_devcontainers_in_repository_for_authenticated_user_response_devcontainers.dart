// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers {const CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers({required this.path, this.name, this.displayName, });

factory CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers.fromJson(Map<String, dynamic> json) { return CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers(
  path: json['path'] as String,
  name: json['name'] as String?,
  displayName: json['display_name'] as String?,
); }

final String path;

final String? name;

final String? displayName;

Map<String, dynamic> toJson() { return {
  'path': path,
  'name': ?name,
  'display_name': ?displayName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('path') && json['path'] is String; } 
CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers copyWith({String? path, String Function()? name, String Function()? displayName, }) { return CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers(
  path: path ?? this.path,
  name: name != null ? name() : this.name,
  displayName: displayName != null ? displayName() : this.displayName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers &&
          path == other.path &&
          name == other.name &&
          displayName == other.displayName; } 
@override int get hashCode { return Object.hash(path, name, displayName); } 
@override String toString() { return 'CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers(path: $path, name: $name, displayName: $displayName)'; } 
 }
