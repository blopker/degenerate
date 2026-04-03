// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_reference.dart';/// Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
@immutable final class CephFsPersistentVolumeSource {const CephFsPersistentVolumeSource({required this.monitors, this.path, this.readOnly, this.secretFile, this.secretRef, this.user, });

factory CephFsPersistentVolumeSource.fromJson(Map<String, dynamic> json) { return CephFsPersistentVolumeSource(
  monitors: (json['monitors'] as List<dynamic>).map((e) => e as String).toList(),
  path: json['path'] as String?,
  readOnly: json['readOnly'] as bool?,
  secretFile: json['secretFile'] as String?,
  secretRef: json['secretRef'] != null ? SecretReference.fromJson(json['secretRef'] as Map<String, dynamic>) : null,
  user: json['user'] as String?,
); }

/// monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
final List<String> monitors;

/// path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
final String? path;

/// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
final bool? readOnly;

/// secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
final String? secretFile;

/// secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
final SecretReference? secretRef;

/// user is Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
final String? user;

Map<String, dynamic> toJson() { return {
  'monitors': monitors,
  'path': ?path,
  'readOnly': ?readOnly,
  'secretFile': ?secretFile,
  if (secretRef != null) 'secretRef': secretRef?.toJson(),
  'user': ?user,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('monitors'); } 
CephFsPersistentVolumeSource copyWith({List<String>? monitors, String Function()? path, bool Function()? readOnly, String Function()? secretFile, SecretReference Function()? secretRef, String Function()? user, }) { return CephFsPersistentVolumeSource(
  monitors: monitors ?? this.monitors,
  path: path != null ? path() : this.path,
  readOnly: readOnly != null ? readOnly() : this.readOnly,
  secretFile: secretFile != null ? secretFile() : this.secretFile,
  secretRef: secretRef != null ? secretRef() : this.secretRef,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CephFsPersistentVolumeSource &&
          listEquals(monitors, other.monitors) &&
          path == other.path &&
          readOnly == other.readOnly &&
          secretFile == other.secretFile &&
          secretRef == other.secretRef &&
          user == other.user; } 
@override int get hashCode { return Object.hash(Object.hashAll(monitors), path, readOnly, secretFile, secretRef, user); } 
@override String toString() { return 'CephFsPersistentVolumeSource(monitors: $monitors, path: $path, readOnly: $readOnly, secretFile: $secretFile, secretRef: $secretRef, user: $user)'; } 
 }
