// GENERATED CODE - DO NOT MODIFY BY HAND

/// Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
final class HostPathVolumeSource {const HostPathVolumeSource({this.path = '', this.type, });

factory HostPathVolumeSource.fromJson(Map<String, dynamic> json) { return HostPathVolumeSource(
  path: json['path'] as String,
  type: json['type'] as String?,
); }

/// path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
final String path;

/// type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
final String? type;

Map<String, dynamic> toJson() { return {
  'path': path,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('path') && json['path'] is String; } 
HostPathVolumeSource copyWith({String? path, String Function()? type, }) { return HostPathVolumeSource(
  path: path ?? this.path,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HostPathVolumeSource &&
          path == other.path &&
          type == other.type; } 
@override int get hashCode { return Object.hash(path, type); } 
@override String toString() { return 'HostPathVolumeSource(path: $path, type: $type)'; } 
 }
