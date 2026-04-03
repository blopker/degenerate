// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetGroupListResponse {const GetGroupListResponse({required this.createdAt, required this.description, required this.name, required this.updatedAt, required this.uuid, });

factory GetGroupListResponse.fromJson(Map<String, dynamic> json) { return GetGroupListResponse(
  createdAt: DateTime.parse(json['createdAt'] as String),
  description: json['description'] as String,
  name: json['name'] as String,
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  uuid: json['uuid'] as String,
); }

final DateTime createdAt;

final String description;

final String name;

final DateTime updatedAt;

final String uuid;

Map<String, dynamic> toJson() { return {
  'createdAt': createdAt.toIso8601String(),
  'description': description,
  'name': name,
  'updatedAt': updatedAt.toIso8601String(),
  'uuid': uuid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('createdAt') && json['createdAt'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('updatedAt') && json['updatedAt'] is String &&
      json.containsKey('uuid') && json['uuid'] is String; } 
GetGroupListResponse copyWith({DateTime? createdAt, String? description, String? name, DateTime? updatedAt, String? uuid, }) { return GetGroupListResponse(
  createdAt: createdAt ?? this.createdAt,
  description: description ?? this.description,
  name: name ?? this.name,
  updatedAt: updatedAt ?? this.updatedAt,
  uuid: uuid ?? this.uuid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetGroupListResponse &&
          createdAt == other.createdAt &&
          description == other.description &&
          name == other.name &&
          updatedAt == other.updatedAt &&
          uuid == other.uuid; } 
@override int get hashCode { return Object.hash(createdAt, description, name, updatedAt, uuid); } 
@override String toString() { return 'GetGroupListResponse(createdAt: $createdAt, description: $description, name: $name, updatedAt: $updatedAt, uuid: $uuid)'; } 
 }
