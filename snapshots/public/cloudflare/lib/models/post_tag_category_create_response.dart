// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTagCategoryCreateResponse {const PostTagCategoryCreateResponse({required this.name, required this.uuid, this.createdAt, this.description, this.updatedAt, });

factory PostTagCategoryCreateResponse.fromJson(Map<String, dynamic> json) { return PostTagCategoryCreateResponse(
  createdAt: json['createdAt'] as String?,
  description: json['description'] as String?,
  name: json['name'] as String,
  updatedAt: json['updatedAt'] as String?,
  uuid: json['uuid'] as String,
); }

final String? createdAt;

final String? description;

final String name;

final String? updatedAt;

final String uuid;

Map<String, dynamic> toJson() { return {
  'createdAt': ?createdAt,
  'description': ?description,
  'name': name,
  'updatedAt': ?updatedAt,
  'uuid': uuid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('uuid') && json['uuid'] is String; } 
PostTagCategoryCreateResponse copyWith({String Function()? createdAt, String Function()? description, String? name, String Function()? updatedAt, String? uuid, }) { return PostTagCategoryCreateResponse(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description != null ? description() : this.description,
  name: name ?? this.name,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  uuid: uuid ?? this.uuid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTagCategoryCreateResponse &&
          createdAt == other.createdAt &&
          description == other.description &&
          name == other.name &&
          updatedAt == other.updatedAt &&
          uuid == other.uuid; } 
@override int get hashCode { return Object.hash(createdAt, description, name, updatedAt, uuid); } 
@override String toString() { return 'PostTagCategoryCreateResponse(createdAt: $createdAt, description: $description, name: $name, updatedAt: $updatedAt, uuid: $uuid)'; } 
 }
