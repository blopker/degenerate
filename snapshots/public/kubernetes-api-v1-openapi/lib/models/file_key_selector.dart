// GENERATED CODE - DO NOT MODIFY BY HAND

/// FileKeySelector selects a key of the env file.
final class FileKeySelector {const FileKeySelector({this.key = '', this.optional = false, this.path = '', this.volumeName = '', });

factory FileKeySelector.fromJson(Map<String, dynamic> json) { return FileKeySelector(
  key: json['key'] as String,
  optional: json.containsKey('optional') ? json['optional'] as bool : false,
  path: json['path'] as String,
  volumeName: json['volumeName'] as String,
); }

/// The key within the env file. An invalid key will prevent the pod from starting. The keys defined within a source may consist of any printable ASCII characters except '='. During Alpha stage of the EnvFiles feature gate, the key size is limited to 128 characters.
final String key;

/// Specify whether the file or its key must be defined. If the file or key does not exist, then the env var is not published. If optional is set to true and the specified key does not exist, the environment variable will not be set in the Pod's containers.
/// 
/// If optional is set to false and the specified key does not exist, an error will be returned during Pod creation.
final bool optional;

/// The path within the volume from which to select the file. Must be relative and may not contain the '..' path or start with '..'.
final String path;

/// The name of the volume mount containing the env file.
final String volumeName;

Map<String, dynamic> toJson() { return {
  'key': key,
  'optional': optional,
  'path': path,
  'volumeName': volumeName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String &&
      json.containsKey('path') && json['path'] is String &&
      json.containsKey('volumeName') && json['volumeName'] is String; } 
FileKeySelector copyWith({String? key, bool Function()? optional, String? path, String? volumeName, }) { return FileKeySelector(
  key: key ?? this.key,
  optional: optional != null ? optional() : this.optional,
  path: path ?? this.path,
  volumeName: volumeName ?? this.volumeName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FileKeySelector &&
          key == other.key &&
          optional == other.optional &&
          path == other.path &&
          volumeName == other.volumeName; } 
@override int get hashCode { return Object.hash(key, optional, path, volumeName); } 
@override String toString() { return 'FileKeySelector(key: $key, optional: $optional, path: $path, volumeName: $volumeName)'; } 
 }
