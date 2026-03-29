// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostEventTagCreateRequest {const PostEventTagCreateRequest({required this.tags});

factory PostEventTagCreateRequest.fromJson(Map<String, dynamic> json) { return PostEventTagCreateRequest(
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> tags;

Map<String, dynamic> toJson() { return {
  'tags': tags,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tags'); } 
PostEventTagCreateRequest copyWith({List<String>? tags}) { return PostEventTagCreateRequest(
  tags: tags ?? this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventTagCreateRequest &&
          listEquals(tags, other.tags); } 
@override int get hashCode { return Object.hashAll(tags).hashCode; } 
@override String toString() { return 'PostEventTagCreateRequest(tags: $tags)'; } 
 }
