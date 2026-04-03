// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_sharing_share_name.dart';@immutable final class ResourceSharingUpdateShareRequest {const ResourceSharingUpdateShareRequest({required this.name});

factory ResourceSharingUpdateShareRequest.fromJson(Map<String, dynamic> json) { return ResourceSharingUpdateShareRequest(
  name: ResourceSharingShareName.fromJson(json['name'] as String),
); }

/// The name of the share.
final ResourceSharingShareName name;

Map<String, dynamic> toJson() { return {
  'name': name.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name'); } 
ResourceSharingUpdateShareRequest copyWith({ResourceSharingShareName? name}) { return ResourceSharingUpdateShareRequest(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceSharingUpdateShareRequest &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'ResourceSharingUpdateShareRequest(name: $name)'; } 
 }
