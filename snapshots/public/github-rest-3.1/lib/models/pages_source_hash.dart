// GENERATED CODE - DO NOT MODIFY BY HAND

final class PagesSourceHash {const PagesSourceHash({required this.branch, required this.path, });

factory PagesSourceHash.fromJson(Map<String, dynamic> json) { return PagesSourceHash(
  branch: json['branch'] as String,
  path: json['path'] as String,
); }

final String branch;

final String path;

Map<String, dynamic> toJson() { return {
  'branch': branch,
  'path': path,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('branch') && json['branch'] is String &&
      json.containsKey('path') && json['path'] is String; } 
PagesSourceHash copyWith({String? branch, String? path, }) { return PagesSourceHash(
  branch: branch ?? this.branch,
  path: path ?? this.path,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesSourceHash &&
          branch == other.branch &&
          path == other.path; } 
@override int get hashCode { return Object.hash(branch, path); } 
@override String toString() { return 'PagesSourceHash(branch: $branch, path: $path)'; } 
 }
