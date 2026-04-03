// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The environment type. Always `container_reference`.
@immutable final class ContainerReferenceResourceType {const ContainerReferenceResourceType._(this.value);

factory ContainerReferenceResourceType.fromJson(String json) { return switch (json) {
  'container_reference' => containerReference,
  _ => ContainerReferenceResourceType._(json),
}; }

static const ContainerReferenceResourceType containerReference = ContainerReferenceResourceType._('container_reference');

static const List<ContainerReferenceResourceType> values = [containerReference];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ContainerReferenceResourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ContainerReferenceResourceType($value)'; } 
 }
/// Represents a container created with /v1/containers.
@immutable final class ContainerReferenceResource {const ContainerReferenceResource({required this.containerId, this.type = ContainerReferenceResourceType.containerReference, });

factory ContainerReferenceResource.fromJson(Map<String, dynamic> json) { return ContainerReferenceResource(
  type: ContainerReferenceResourceType.fromJson(json['type'] as String),
  containerId: json['container_id'] as String,
); }

/// The environment type. Always `container_reference`.
final ContainerReferenceResourceType type;

final String containerId;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'container_id': containerId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('container_id') && json['container_id'] is String; } 
ContainerReferenceResource copyWith({ContainerReferenceResourceType? type, String? containerId, }) { return ContainerReferenceResource(
  type: type ?? this.type,
  containerId: containerId ?? this.containerId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerReferenceResource &&
          type == other.type &&
          containerId == other.containerId; } 
@override int get hashCode { return Object.hash(type, containerId); } 
@override String toString() { return 'ContainerReferenceResource(type: $type, containerId: $containerId)'; } 
 }
