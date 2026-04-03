// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTagCategoryCreateRequest {const PostTagCategoryCreateRequest({required this.name, this.description, });

factory PostTagCategoryCreateRequest.fromJson(Map<String, dynamic> json) { return PostTagCategoryCreateRequest(
  description: json['description'] as String?,
  name: json['name'] as String,
); }

final String? description;

final String name;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
PostTagCategoryCreateRequest copyWith({String Function()? description, String? name, }) { return PostTagCategoryCreateRequest(
  description: description != null ? description() : this.description,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTagCategoryCreateRequest &&
          description == other.description &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, name); } 
@override String toString() { return 'PostTagCategoryCreateRequest(description: $description, name: $name)'; } 
 }
