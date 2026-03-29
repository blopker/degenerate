// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'local_object_reference.dart';/// Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
final class RbdVolumeSource {const RbdVolumeSource({this.fsType, this.image = '', this.keyring = '/etc/ceph/keyring', required this.monitors, this.pool = 'rbd', this.readOnly, this.secretRef, this.user = 'admin', });

factory RbdVolumeSource.fromJson(Map<String, dynamic> json) { return RbdVolumeSource(
  fsType: json['fsType'] as String?,
  image: json['image'] as String,
  keyring: json.containsKey('keyring') ? json['keyring'] as String : '/etc/ceph/keyring',
  monitors: (json['monitors'] as List<dynamic>).map((e) => e as String).toList(),
  pool: json.containsKey('pool') ? json['pool'] as String : 'rbd',
  readOnly: json['readOnly'] as bool?,
  secretRef: json['secretRef'] != null ? LocalObjectReference.fromJson(json['secretRef'] as Map<String, dynamic>) : null,
  user: json.containsKey('user') ? json['user'] as String : 'admin',
); }

/// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd
final String? fsType;

/// image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
final String image;

/// keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
final String keyring;

/// monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
final List<String> monitors;

/// pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
final String pool;

/// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
final bool? readOnly;

/// secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
final LocalObjectReference? secretRef;

/// user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
final String user;

Map<String, dynamic> toJson() { return {
  'fsType': ?fsType,
  'image': image,
  'keyring': keyring,
  'monitors': monitors,
  'pool': pool,
  'readOnly': ?readOnly,
  if (secretRef != null) 'secretRef': secretRef?.toJson(),
  'user': user,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('image') && json['image'] is String &&
      json.containsKey('monitors'); } 
RbdVolumeSource copyWith({String Function()? fsType, String? image, String Function()? keyring, List<String>? monitors, String Function()? pool, bool Function()? readOnly, LocalObjectReference Function()? secretRef, String Function()? user, }) { return RbdVolumeSource(
  fsType: fsType != null ? fsType() : this.fsType,
  image: image ?? this.image,
  keyring: keyring != null ? keyring() : this.keyring,
  monitors: monitors ?? this.monitors,
  pool: pool != null ? pool() : this.pool,
  readOnly: readOnly != null ? readOnly() : this.readOnly,
  secretRef: secretRef != null ? secretRef() : this.secretRef,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RbdVolumeSource &&
          fsType == other.fsType &&
          image == other.image &&
          keyring == other.keyring &&
          listEquals(monitors, other.monitors) &&
          pool == other.pool &&
          readOnly == other.readOnly &&
          secretRef == other.secretRef &&
          user == other.user; } 
@override int get hashCode { return Object.hash(fsType, image, keyring, Object.hashAll(monitors), pool, readOnly, secretRef, user); } 
@override String toString() { return 'RbdVolumeSource(fsType: $fsType, image: $image, keyring: $keyring, monitors: $monitors, pool: $pool, readOnly: $readOnly, secretRef: $secretRef, user: $user)'; } 
 }
