// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'managed_fields_entry.dart';import 'owner_reference.dart';import 'time.dart';/// ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
final class ObjectMeta {const ObjectMeta({this.annotations, this.creationTimestamp, this.deletionGracePeriodSeconds, this.deletionTimestamp, this.finalizers, this.generateName, this.generation, this.labels, this.managedFields, this.name, this.namespace, this.ownerReferences, this.resourceVersion, this.selfLink, this.uid, });

factory ObjectMeta.fromJson(Map<String, dynamic> json) { return ObjectMeta(
  annotations: (json['annotations'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  creationTimestamp: json['creationTimestamp'] != null ? Time.fromJson(json['creationTimestamp'] as String) : null,
  deletionGracePeriodSeconds: json['deletionGracePeriodSeconds'] != null ? (json['deletionGracePeriodSeconds'] as num).toInt() : null,
  deletionTimestamp: json['deletionTimestamp'] != null ? Time.fromJson(json['deletionTimestamp'] as String) : null,
  finalizers: (json['finalizers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  generateName: json['generateName'] as String?,
  generation: json['generation'] != null ? (json['generation'] as num).toInt() : null,
  labels: (json['labels'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  managedFields: (json['managedFields'] as List<dynamic>?)?.map((e) => ManagedFieldsEntry.fromJson(e as Map<String, dynamic>)).toList(),
  name: json['name'] as String?,
  namespace: json['namespace'] as String?,
  ownerReferences: (json['ownerReferences'] as List<dynamic>?)?.map((e) => OwnerReference.fromJson(e as Map<String, dynamic>)).toList(),
  resourceVersion: json['resourceVersion'] as String?,
  selfLink: json['selfLink'] as String?,
  uid: json['uid'] as String?,
); }

/// Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations
final Map<String,String>? annotations;

/// CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
/// 
/// Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
final Time? creationTimestamp;

/// Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
final int? deletionGracePeriodSeconds;

/// DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
/// 
/// Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
final Time? deletionTimestamp;

/// Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
final List<String>? finalizers;

/// GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
/// 
/// If this field is specified and the generated name exists, the server will return a 409.
/// 
/// Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
final String? generateName;

/// A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
final int? generation;

/// Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels
final Map<String,String>? labels;

/// ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like "ci-cd". The set of fields is always in the version that the workflow used when modifying the object.
final List<ManagedFieldsEntry>? managedFields;

/// Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
final String? name;

/// Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
/// 
/// Must be a DNS_LABEL. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces
final String? namespace;

/// List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
final List<OwnerReference>? ownerReferences;

/// An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
/// 
/// Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
final String? resourceVersion;

/// Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
final String? selfLink;

/// UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
/// 
/// Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
final String? uid;

Map<String, dynamic> toJson() { return {
  'annotations': ?annotations,
  if (creationTimestamp != null) 'creationTimestamp': creationTimestamp?.toJson(),
  'deletionGracePeriodSeconds': ?deletionGracePeriodSeconds,
  if (deletionTimestamp != null) 'deletionTimestamp': deletionTimestamp?.toJson(),
  'finalizers': ?finalizers,
  'generateName': ?generateName,
  'generation': ?generation,
  'labels': ?labels,
  if (managedFields != null) 'managedFields': managedFields?.map((e) => e.toJson()).toList(),
  'name': ?name,
  'namespace': ?namespace,
  if (ownerReferences != null) 'ownerReferences': ownerReferences?.map((e) => e.toJson()).toList(),
  'resourceVersion': ?resourceVersion,
  'selfLink': ?selfLink,
  'uid': ?uid,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ObjectMeta copyWith({Map<String, String> Function()? annotations, Time Function()? creationTimestamp, int Function()? deletionGracePeriodSeconds, Time Function()? deletionTimestamp, List<String> Function()? finalizers, String Function()? generateName, int Function()? generation, Map<String, String> Function()? labels, List<ManagedFieldsEntry> Function()? managedFields, String Function()? name, String Function()? namespace, List<OwnerReference> Function()? ownerReferences, String Function()? resourceVersion, String Function()? selfLink, String Function()? uid, }) { return ObjectMeta(
  annotations: annotations != null ? annotations() : this.annotations,
  creationTimestamp: creationTimestamp != null ? creationTimestamp() : this.creationTimestamp,
  deletionGracePeriodSeconds: deletionGracePeriodSeconds != null ? deletionGracePeriodSeconds() : this.deletionGracePeriodSeconds,
  deletionTimestamp: deletionTimestamp != null ? deletionTimestamp() : this.deletionTimestamp,
  finalizers: finalizers != null ? finalizers() : this.finalizers,
  generateName: generateName != null ? generateName() : this.generateName,
  generation: generation != null ? generation() : this.generation,
  labels: labels != null ? labels() : this.labels,
  managedFields: managedFields != null ? managedFields() : this.managedFields,
  name: name != null ? name() : this.name,
  namespace: namespace != null ? namespace() : this.namespace,
  ownerReferences: ownerReferences != null ? ownerReferences() : this.ownerReferences,
  resourceVersion: resourceVersion != null ? resourceVersion() : this.resourceVersion,
  selfLink: selfLink != null ? selfLink() : this.selfLink,
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObjectMeta &&
          annotations == other.annotations &&
          creationTimestamp == other.creationTimestamp &&
          deletionGracePeriodSeconds == other.deletionGracePeriodSeconds &&
          deletionTimestamp == other.deletionTimestamp &&
          listEquals(finalizers, other.finalizers) &&
          generateName == other.generateName &&
          generation == other.generation &&
          labels == other.labels &&
          listEquals(managedFields, other.managedFields) &&
          name == other.name &&
          namespace == other.namespace &&
          listEquals(ownerReferences, other.ownerReferences) &&
          resourceVersion == other.resourceVersion &&
          selfLink == other.selfLink &&
          uid == other.uid; } 
@override int get hashCode { return Object.hash(annotations, creationTimestamp, deletionGracePeriodSeconds, deletionTimestamp, Object.hashAll(finalizers ?? const []), generateName, generation, labels, Object.hashAll(managedFields ?? const []), name, namespace, Object.hashAll(ownerReferences ?? const []), resourceVersion, selfLink, uid); } 
@override String toString() { return 'ObjectMeta(annotations: $annotations, creationTimestamp: $creationTimestamp, deletionGracePeriodSeconds: $deletionGracePeriodSeconds, deletionTimestamp: $deletionTimestamp, finalizers: $finalizers, generateName: $generateName, generation: $generation, labels: $labels, managedFields: $managedFields, name: $name, namespace: $namespace, ownerReferences: $ownerReferences, resourceVersion: $resourceVersion, selfLink: $selfLink, uid: $uid)'; } 
 }
