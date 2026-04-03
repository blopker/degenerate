// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Snapshot Mount
@immutable final class MconnSnapshotMount {const MconnSnapshotMount({required this.fileSystem, required this.kind, required this.mountPoint, required this.name, this.availableBytes, this.connectorId, this.isReadOnly, this.isRemovable, this.totalBytes, });

factory MconnSnapshotMount.fromJson(Map<String, dynamic> json) { return MconnSnapshotMount(
  availableBytes: json['available_bytes'] != null ? (json['available_bytes'] as num).toDouble() : null,
  connectorId: json['connector_id'] as String?,
  fileSystem: json['file_system'] as String,
  isReadOnly: json['is_read_only'] as bool?,
  isRemovable: json['is_removable'] as bool?,
  kind: json['kind'] as String,
  mountPoint: json['mount_point'] as String,
  name: json['name'] as String,
  totalBytes: json['total_bytes'] != null ? (json['total_bytes'] as num).toDouble() : null,
); }

/// Available disk size (bytes)
final double? availableBytes;

/// Connector identifier
final String? connectorId;

/// File system on disk (EXT4, NTFS, etc.)
final String fileSystem;

/// Determines whether the disk is read-only
final bool? isReadOnly;

/// Determines whether the disk is removable
final bool? isRemovable;

/// Kind of disk (HDD, SSD, etc.)
final String kind;

/// Path where disk is mounted
final String mountPoint;

/// Name of the disk mount
final String name;

/// Total disk size (bytes)
final double? totalBytes;

Map<String, dynamic> toJson() { return {
  'available_bytes': ?availableBytes,
  'connector_id': ?connectorId,
  'file_system': fileSystem,
  'is_read_only': ?isReadOnly,
  'is_removable': ?isRemovable,
  'kind': kind,
  'mount_point': mountPoint,
  'name': name,
  'total_bytes': ?totalBytes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file_system') && json['file_system'] is String &&
      json.containsKey('kind') && json['kind'] is String &&
      json.containsKey('mount_point') && json['mount_point'] is String &&
      json.containsKey('name') && json['name'] is String; } 
MconnSnapshotMount copyWith({double Function()? availableBytes, String Function()? connectorId, String? fileSystem, bool Function()? isReadOnly, bool Function()? isRemovable, String? kind, String? mountPoint, String? name, double Function()? totalBytes, }) { return MconnSnapshotMount(
  availableBytes: availableBytes != null ? availableBytes() : this.availableBytes,
  connectorId: connectorId != null ? connectorId() : this.connectorId,
  fileSystem: fileSystem ?? this.fileSystem,
  isReadOnly: isReadOnly != null ? isReadOnly() : this.isReadOnly,
  isRemovable: isRemovable != null ? isRemovable() : this.isRemovable,
  kind: kind ?? this.kind,
  mountPoint: mountPoint ?? this.mountPoint,
  name: name ?? this.name,
  totalBytes: totalBytes != null ? totalBytes() : this.totalBytes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSnapshotMount &&
          availableBytes == other.availableBytes &&
          connectorId == other.connectorId &&
          fileSystem == other.fileSystem &&
          isReadOnly == other.isReadOnly &&
          isRemovable == other.isRemovable &&
          kind == other.kind &&
          mountPoint == other.mountPoint &&
          name == other.name &&
          totalBytes == other.totalBytes; } 
@override int get hashCode { return Object.hash(availableBytes, connectorId, fileSystem, isReadOnly, isRemovable, kind, mountPoint, name, totalBytes); } 
@override String toString() { return 'MconnSnapshotMount(availableBytes: $availableBytes, connectorId: $connectorId, fileSystem: $fileSystem, isReadOnly: $isReadOnly, isRemovable: $isRemovable, kind: $kind, mountPoint: $mountPoint, name: $name, totalBytes: $totalBytes)'; } 
 }
