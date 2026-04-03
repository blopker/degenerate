// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ObjectReference contains enough information to let you inspect or modify the referred object.
@immutable final class ObjectReference {const ObjectReference({this.apiVersion, this.fieldPath, this.kind, this.name, this.namespace, this.resourceVersion, this.uid, });

factory ObjectReference.fromJson(Map<String, dynamic> json) { return ObjectReference(
  apiVersion: json['apiVersion'] as String?,
  fieldPath: json['fieldPath'] as String?,
  kind: json['kind'] as String?,
  name: json['name'] as String?,
  namespace: json['namespace'] as String?,
  resourceVersion: json['resourceVersion'] as String?,
  uid: json['uid'] as String?,
); }

/// API version of the referent.
final String? apiVersion;

/// If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers`[2]`. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers`[2]`" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.
final String? fieldPath;

/// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final String? kind;

/// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
final String? name;

/// Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
final String? namespace;

/// Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
final String? resourceVersion;

/// UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
final String? uid;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'fieldPath': ?fieldPath,
  'kind': ?kind,
  'name': ?name,
  'namespace': ?namespace,
  'resourceVersion': ?resourceVersion,
  'uid': ?uid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'apiVersion', 'fieldPath', 'kind', 'name', 'namespace', 'resourceVersion', 'uid'}.contains(key)); } 
ObjectReference copyWith({String Function()? apiVersion, String Function()? fieldPath, String Function()? kind, String Function()? name, String Function()? namespace, String Function()? resourceVersion, String Function()? uid, }) { return ObjectReference(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  fieldPath: fieldPath != null ? fieldPath() : this.fieldPath,
  kind: kind != null ? kind() : this.kind,
  name: name != null ? name() : this.name,
  namespace: namespace != null ? namespace() : this.namespace,
  resourceVersion: resourceVersion != null ? resourceVersion() : this.resourceVersion,
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObjectReference &&
          apiVersion == other.apiVersion &&
          fieldPath == other.fieldPath &&
          kind == other.kind &&
          name == other.name &&
          namespace == other.namespace &&
          resourceVersion == other.resourceVersion &&
          uid == other.uid; } 
@override int get hashCode { return Object.hash(apiVersion, fieldPath, kind, name, namespace, resourceVersion, uid); } 
@override String toString() { return 'ObjectReference(apiVersion: $apiVersion, fieldPath: $fieldPath, kind: $kind, name: $name, namespace: $namespace, resourceVersion: $resourceVersion, uid: $uid)'; } 
 }
