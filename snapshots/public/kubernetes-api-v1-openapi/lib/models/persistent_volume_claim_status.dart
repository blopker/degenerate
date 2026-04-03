// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'modify_volume_status.dart';import 'persistent_volume_claim_condition.dart';import 'resource_quantity.dart';/// PersistentVolumeClaimStatus is the current status of a persistent volume claim.
@immutable final class PersistentVolumeClaimStatus {const PersistentVolumeClaimStatus({this.accessModes, this.allocatedResourceStatuses, this.allocatedResources, this.capacity, this.conditions, this.currentVolumeAttributesClassName, this.modifyVolumeStatus, this.phase, });

factory PersistentVolumeClaimStatus.fromJson(Map<String, dynamic> json) { return PersistentVolumeClaimStatus(
  accessModes: (json['accessModes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  allocatedResourceStatuses: (json['allocatedResourceStatuses'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  allocatedResources: (json['allocatedResources'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, OneOf2.parse(v, fromA: (v) => v as String, fromB: (v) => (v as num).toDouble(),))),
  capacity: (json['capacity'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, OneOf2.parse(v, fromA: (v) => v as String, fromB: (v) => (v as num).toDouble(),))),
  conditions: (json['conditions'] as List<dynamic>?)?.map((e) => PersistentVolumeClaimCondition.fromJson(e as Map<String, dynamic>)).toList(),
  currentVolumeAttributesClassName: json['currentVolumeAttributesClassName'] as String?,
  modifyVolumeStatus: json['modifyVolumeStatus'] != null ? ModifyVolumeStatus.fromJson(json['modifyVolumeStatus'] as Map<String, dynamic>) : null,
  phase: json['phase'] as String?,
); }

/// accessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
final List<String>? accessModes;

/// allocatedResourceStatuses stores status of resource being resized for the given PVC. Key names follow standard Kubernetes label syntax. Valid values are either:
/// 	* Un-prefixed keys:
/// 		- storage - the capacity of the volume.
/// 	* Custom resources must use implementation-defined prefixed names such as "example.com/my-custom-resource"
/// Apart from above values - keys that are unprefixed or have kubernetes.io prefix are considered reserved and hence may not be used.
/// 
/// ClaimResourceStatus can be in any of following states:
/// 	- ControllerResizeInProgress:
/// 		State set when resize controller starts resizing the volume in control-plane.
/// 	- ControllerResizeFailed:
/// 		State set when resize has failed in resize controller with a terminal error.
/// 	- NodeResizePending:
/// 		State set when resize controller has finished resizing the volume but further resizing of
/// 		volume is needed on the node.
/// 	- NodeResizeInProgress:
/// 		State set when kubelet starts resizing the volume.
/// 	- NodeResizeFailed:
/// 		State set when resizing has failed in kubelet with a terminal error. Transient errors don't set
/// 		NodeResizeFailed.
/// For example: if expanding a PVC for more capacity - this field can be one of the following states:
/// 	- pvc.status.allocatedResourceStatus`['storage']` = "ControllerResizeInProgress"
///      - pvc.status.allocatedResourceStatus`['storage']` = "ControllerResizeFailed"
///      - pvc.status.allocatedResourceStatus`['storage']` = "NodeResizePending"
///      - pvc.status.allocatedResourceStatus`['storage']` = "NodeResizeInProgress"
///      - pvc.status.allocatedResourceStatus`['storage']` = "NodeResizeFailed"
/// When this field is not set, it means that no resize operation is in progress for the given PVC.
/// 
/// A controller that receives PVC update with previously unknown resourceName or ClaimResourceStatus should ignore the update for the purpose it was designed. For example - a controller that only is responsible for resizing capacity of the volume, should ignore PVC updates that change other valid resources associated with PVC.
final Map<String,String>? allocatedResourceStatuses;

/// allocatedResources tracks the resources allocated to a PVC including its capacity. Key names follow standard Kubernetes label syntax. Valid values are either:
/// 	* Un-prefixed keys:
/// 		- storage - the capacity of the volume.
/// 	* Custom resources must use implementation-defined prefixed names such as "example.com/my-custom-resource"
/// Apart from above values - keys that are unprefixed or have kubernetes.io prefix are considered reserved and hence may not be used.
/// 
/// Capacity reported here may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity.
/// 
/// A controller that receives PVC update with previously unknown resourceName should ignore the update for the purpose it was designed. For example - a controller that only is responsible for resizing capacity of the volume, should ignore PVC updates that change other valid resources associated with PVC.
final Map<String,ResourceQuantity>? allocatedResources;

/// capacity represents the actual resources of the underlying volume.
final Map<String,ResourceQuantity>? capacity;

/// conditions is the current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'Resizing'.
final List<PersistentVolumeClaimCondition>? conditions;

/// currentVolumeAttributesClassName is the current name of the VolumeAttributesClass the PVC is using. When unset, there is no VolumeAttributeClass applied to this PersistentVolumeClaim
final String? currentVolumeAttributesClassName;

/// ModifyVolumeStatus represents the status object of ControllerModifyVolume operation. When this is unset, there is no ModifyVolume operation being attempted.
final ModifyVolumeStatus? modifyVolumeStatus;

/// phase represents the current phase of PersistentVolumeClaim.
final String? phase;

Map<String, dynamic> toJson() { return {
  'accessModes': ?accessModes,
  'allocatedResourceStatuses': ?allocatedResourceStatuses,
  if (allocatedResources != null) 'allocatedResources': allocatedResources?.map((k, v) => MapEntry(k, v.toJson())),
  if (capacity != null) 'capacity': capacity?.map((k, v) => MapEntry(k, v.toJson())),
  if (conditions != null) 'conditions': conditions?.map((e) => e.toJson()).toList(),
  'currentVolumeAttributesClassName': ?currentVolumeAttributesClassName,
  if (modifyVolumeStatus != null) 'modifyVolumeStatus': modifyVolumeStatus?.toJson(),
  'phase': ?phase,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'accessModes', 'allocatedResourceStatuses', 'allocatedResources', 'capacity', 'conditions', 'currentVolumeAttributesClassName', 'modifyVolumeStatus', 'phase'}.contains(key)); } 
PersistentVolumeClaimStatus copyWith({List<String> Function()? accessModes, Map<String, String> Function()? allocatedResourceStatuses, Map<String, ResourceQuantity> Function()? allocatedResources, Map<String, ResourceQuantity> Function()? capacity, List<PersistentVolumeClaimCondition> Function()? conditions, String Function()? currentVolumeAttributesClassName, ModifyVolumeStatus Function()? modifyVolumeStatus, String Function()? phase, }) { return PersistentVolumeClaimStatus(
  accessModes: accessModes != null ? accessModes() : this.accessModes,
  allocatedResourceStatuses: allocatedResourceStatuses != null ? allocatedResourceStatuses() : this.allocatedResourceStatuses,
  allocatedResources: allocatedResources != null ? allocatedResources() : this.allocatedResources,
  capacity: capacity != null ? capacity() : this.capacity,
  conditions: conditions != null ? conditions() : this.conditions,
  currentVolumeAttributesClassName: currentVolumeAttributesClassName != null ? currentVolumeAttributesClassName() : this.currentVolumeAttributesClassName,
  modifyVolumeStatus: modifyVolumeStatus != null ? modifyVolumeStatus() : this.modifyVolumeStatus,
  phase: phase != null ? phase() : this.phase,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersistentVolumeClaimStatus &&
          listEquals(accessModes, other.accessModes) &&
          allocatedResourceStatuses == other.allocatedResourceStatuses &&
          allocatedResources == other.allocatedResources &&
          capacity == other.capacity &&
          listEquals(conditions, other.conditions) &&
          currentVolumeAttributesClassName == other.currentVolumeAttributesClassName &&
          modifyVolumeStatus == other.modifyVolumeStatus &&
          phase == other.phase; } 
@override int get hashCode { return Object.hash(Object.hashAll(accessModes ?? const []), allocatedResourceStatuses, allocatedResources, capacity, Object.hashAll(conditions ?? const []), currentVolumeAttributesClassName, modifyVolumeStatus, phase); } 
@override String toString() { return 'PersistentVolumeClaimStatus(accessModes: $accessModes, allocatedResourceStatuses: $allocatedResourceStatuses, allocatedResources: $allocatedResources, capacity: $capacity, conditions: $conditions, currentVolumeAttributesClassName: $currentVolumeAttributesClassName, modifyVolumeStatus: $modifyVolumeStatus, phase: $phase)'; } 
 }
