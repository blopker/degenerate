// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'app_armor_profile.dart';import 'se_linux_options.dart';import 'seccomp_profile.dart';import 'sysctl.dart';import 'windows_security_context_options.dart';/// PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
final class PodSecurityContext {const PodSecurityContext({this.appArmorProfile, this.fsGroup, this.fsGroupChangePolicy, this.runAsGroup, this.runAsNonRoot, this.runAsUser, this.seLinuxChangePolicy, this.seLinuxOptions, this.seccompProfile, this.supplementalGroups, this.supplementalGroupsPolicy, this.sysctls, this.windowsOptions, });

factory PodSecurityContext.fromJson(Map<String, dynamic> json) { return PodSecurityContext(
  appArmorProfile: json['appArmorProfile'] != null ? AppArmorProfile.fromJson(json['appArmorProfile'] as Map<String, dynamic>) : null,
  fsGroup: json['fsGroup'] != null ? (json['fsGroup'] as num).toInt() : null,
  fsGroupChangePolicy: json['fsGroupChangePolicy'] as String?,
  runAsGroup: json['runAsGroup'] != null ? (json['runAsGroup'] as num).toInt() : null,
  runAsNonRoot: json['runAsNonRoot'] as bool?,
  runAsUser: json['runAsUser'] != null ? (json['runAsUser'] as num).toInt() : null,
  seLinuxChangePolicy: json['seLinuxChangePolicy'] as String?,
  seLinuxOptions: json['seLinuxOptions'] != null ? SeLinuxOptions.fromJson(json['seLinuxOptions'] as Map<String, dynamic>) : null,
  seccompProfile: json['seccompProfile'] != null ? SeccompProfile.fromJson(json['seccompProfile'] as Map<String, dynamic>) : null,
  supplementalGroups: (json['supplementalGroups'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  supplementalGroupsPolicy: json['supplementalGroupsPolicy'] as String?,
  sysctls: (json['sysctls'] as List<dynamic>?)?.map((e) => Sysctl.fromJson(e as Map<String, dynamic>)).toList(),
  windowsOptions: json['windowsOptions'] != null ? WindowsSecurityContextOptions.fromJson(json['windowsOptions'] as Map<String, dynamic>) : null,
); }

/// appArmorProfile is the AppArmor options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows.
final AppArmorProfile? appArmorProfile;

/// A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
/// 
/// 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
/// 
/// If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
final int? fsGroup;

/// fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are "OnRootMismatch" and "Always". If not specified, "Always" is used. Note that this field cannot be set when spec.os.name is windows.
final String? fsGroupChangePolicy;

/// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
final int? runAsGroup;

/// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
final bool? runAsNonRoot;

/// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
final int? runAsUser;

/// seLinuxChangePolicy defines how the container's SELinux label is applied to all volumes used by the Pod. It has no effect on nodes that do not support SELinux or to volumes does not support SELinux. Valid values are "MountOption" and "Recursive".
/// 
/// "Recursive" means relabeling of all files on all Pod volumes by the container runtime. This may be slow for large volumes, but allows mixing privileged and unprivileged Pods sharing the same volume on the same node.
/// 
/// "MountOption" mounts all eligible Pod volumes with `-o context` mount option. This requires all Pods that share the same volume to use the same SELinux label. It is not possible to share the same volume among privileged and unprivileged Pods. Eligible volumes are in-tree FibreChannel and iSCSI volumes, and all CSI volumes whose CSI driver announces SELinux support by setting spec.seLinuxMount: true in their CSIDriver instance. Other volumes are always re-labelled recursively. "MountOption" value is allowed only when SELinuxMount feature gate is enabled.
/// 
/// If not specified and SELinuxMount feature gate is enabled, "MountOption" is used. If not specified and SELinuxMount feature gate is disabled, "MountOption" is used for ReadWriteOncePod volumes and "Recursive" for all other volumes.
/// 
/// This field affects only Pods that have SELinux label set, either in PodSecurityContext or in SecurityContext of all containers.
/// 
/// All Pods that use the same volume should use the same seLinuxChangePolicy, otherwise some pods can get stuck in ContainerCreating state. Note that this field cannot be set when spec.os.name is windows.
final String? seLinuxChangePolicy;

/// The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
final SeLinuxOptions? seLinuxOptions;

/// The seccomp options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows.
final SeccompProfile? seccompProfile;

/// A list of groups applied to the first process run in each container, in addition to the container's primary GID and fsGroup (if specified).  If the SupplementalGroupsPolicy feature is enabled, the supplementalGroupsPolicy field determines whether these are in addition to or instead of any group memberships defined in the container image. If unspecified, no additional groups are added, though group memberships defined in the container image may still be used, depending on the supplementalGroupsPolicy field. Note that this field cannot be set when spec.os.name is windows.
final List<int>? supplementalGroups;

/// Defines how supplemental groups of the first container processes are calculated. Valid values are "Merge" and "Strict". If not specified, "Merge" is used. (Alpha) Using the field requires the SupplementalGroupsPolicy feature gate to be enabled and the container runtime must implement support for this feature. Note that this field cannot be set when spec.os.name is windows.
final String? supplementalGroupsPolicy;

/// Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows.
final List<Sysctl>? sysctls;

/// The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux.
final WindowsSecurityContextOptions? windowsOptions;

Map<String, dynamic> toJson() { return {
  if (appArmorProfile != null) 'appArmorProfile': appArmorProfile?.toJson(),
  'fsGroup': ?fsGroup,
  'fsGroupChangePolicy': ?fsGroupChangePolicy,
  'runAsGroup': ?runAsGroup,
  'runAsNonRoot': ?runAsNonRoot,
  'runAsUser': ?runAsUser,
  'seLinuxChangePolicy': ?seLinuxChangePolicy,
  if (seLinuxOptions != null) 'seLinuxOptions': seLinuxOptions?.toJson(),
  if (seccompProfile != null) 'seccompProfile': seccompProfile?.toJson(),
  'supplementalGroups': ?supplementalGroups,
  'supplementalGroupsPolicy': ?supplementalGroupsPolicy,
  if (sysctls != null) 'sysctls': sysctls?.map((e) => e.toJson()).toList(),
  if (windowsOptions != null) 'windowsOptions': windowsOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PodSecurityContext copyWith({AppArmorProfile Function()? appArmorProfile, int Function()? fsGroup, String Function()? fsGroupChangePolicy, int Function()? runAsGroup, bool Function()? runAsNonRoot, int Function()? runAsUser, String Function()? seLinuxChangePolicy, SeLinuxOptions Function()? seLinuxOptions, SeccompProfile Function()? seccompProfile, List<int> Function()? supplementalGroups, String Function()? supplementalGroupsPolicy, List<Sysctl> Function()? sysctls, WindowsSecurityContextOptions Function()? windowsOptions, }) { return PodSecurityContext(
  appArmorProfile: appArmorProfile != null ? appArmorProfile() : this.appArmorProfile,
  fsGroup: fsGroup != null ? fsGroup() : this.fsGroup,
  fsGroupChangePolicy: fsGroupChangePolicy != null ? fsGroupChangePolicy() : this.fsGroupChangePolicy,
  runAsGroup: runAsGroup != null ? runAsGroup() : this.runAsGroup,
  runAsNonRoot: runAsNonRoot != null ? runAsNonRoot() : this.runAsNonRoot,
  runAsUser: runAsUser != null ? runAsUser() : this.runAsUser,
  seLinuxChangePolicy: seLinuxChangePolicy != null ? seLinuxChangePolicy() : this.seLinuxChangePolicy,
  seLinuxOptions: seLinuxOptions != null ? seLinuxOptions() : this.seLinuxOptions,
  seccompProfile: seccompProfile != null ? seccompProfile() : this.seccompProfile,
  supplementalGroups: supplementalGroups != null ? supplementalGroups() : this.supplementalGroups,
  supplementalGroupsPolicy: supplementalGroupsPolicy != null ? supplementalGroupsPolicy() : this.supplementalGroupsPolicy,
  sysctls: sysctls != null ? sysctls() : this.sysctls,
  windowsOptions: windowsOptions != null ? windowsOptions() : this.windowsOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PodSecurityContext &&
          appArmorProfile == other.appArmorProfile &&
          fsGroup == other.fsGroup &&
          fsGroupChangePolicy == other.fsGroupChangePolicy &&
          runAsGroup == other.runAsGroup &&
          runAsNonRoot == other.runAsNonRoot &&
          runAsUser == other.runAsUser &&
          seLinuxChangePolicy == other.seLinuxChangePolicy &&
          seLinuxOptions == other.seLinuxOptions &&
          seccompProfile == other.seccompProfile &&
          listEquals(supplementalGroups, other.supplementalGroups) &&
          supplementalGroupsPolicy == other.supplementalGroupsPolicy &&
          listEquals(sysctls, other.sysctls) &&
          windowsOptions == other.windowsOptions; } 
@override int get hashCode { return Object.hash(appArmorProfile, fsGroup, fsGroupChangePolicy, runAsGroup, runAsNonRoot, runAsUser, seLinuxChangePolicy, seLinuxOptions, seccompProfile, Object.hashAll(supplementalGroups ?? const []), supplementalGroupsPolicy, Object.hashAll(sysctls ?? const []), windowsOptions); } 
@override String toString() { return 'PodSecurityContext(appArmorProfile: $appArmorProfile, fsGroup: $fsGroup, fsGroupChangePolicy: $fsGroupChangePolicy, runAsGroup: $runAsGroup, runAsNonRoot: $runAsNonRoot, runAsUser: $runAsUser, seLinuxChangePolicy: $seLinuxChangePolicy, seLinuxOptions: $seLinuxOptions, seccompProfile: $seccompProfile, supplementalGroups: $supplementalGroups, supplementalGroupsPolicy: $supplementalGroupsPolicy, sysctls: $sysctls, windowsOptions: $windowsOptions)'; } 
 }
