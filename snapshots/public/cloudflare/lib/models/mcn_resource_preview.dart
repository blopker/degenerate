// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_cloud_type.dart';import 'mcn_resource_id.dart';import 'mcn_resource_type.dart';@immutable final class McnResourcePreview {const McnResourcePreview({required this.cloudType, required this.detail, required this.id, required this.name, required this.resourceType, required this.title, });

factory McnResourcePreview.fromJson(Map<String, dynamic> json) { return McnResourcePreview(
  cloudType: McnCloudType.fromJson(json['cloud_type'] as String),
  detail: json['detail'] as String,
  id: McnResourceId.fromJson(json['id'] as String),
  name: json['name'] as String,
  resourceType: McnResourceType.fromJson(json['resource_type'] as String),
  title: json['title'] as String,
); }

final McnCloudType cloudType;

final String detail;

final McnResourceId id;

final String name;

final McnResourceType resourceType;

final String title;

Map<String, dynamic> toJson() { return {
  'cloud_type': cloudType.toJson(),
  'detail': detail,
  'id': id.toJson(),
  'name': name,
  'resource_type': resourceType.toJson(),
  'title': title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cloud_type') &&
      json.containsKey('detail') && json['detail'] is String &&
      json.containsKey('id') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('resource_type') &&
      json.containsKey('title') && json['title'] is String; } 
McnResourcePreview copyWith({McnCloudType? cloudType, String? detail, McnResourceId? id, String? name, McnResourceType? resourceType, String? title, }) { return McnResourcePreview(
  cloudType: cloudType ?? this.cloudType,
  detail: detail ?? this.detail,
  id: id ?? this.id,
  name: name ?? this.name,
  resourceType: resourceType ?? this.resourceType,
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnResourcePreview &&
          cloudType == other.cloudType &&
          detail == other.detail &&
          id == other.id &&
          name == other.name &&
          resourceType == other.resourceType &&
          title == other.title; } 
@override int get hashCode { return Object.hash(cloudType, detail, id, name, resourceType, title); } 
@override String toString() { return 'McnResourcePreview(cloudType: $cloudType, detail: $detail, id: $id, name: $name, resourceType: $resourceType, title: $title)'; } 
 }
