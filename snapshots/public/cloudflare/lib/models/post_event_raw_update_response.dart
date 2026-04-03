// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventRawUpdateResponse {const PostEventRawUpdateResponse({required this.data, required this.id, });

factory PostEventRawUpdateResponse.fromJson(Map<String, dynamic> json) { return PostEventRawUpdateResponse(
  data: (json['data'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  id: json['id'] as String,
); }

final Map<String,dynamic> data;

final String id;

Map<String, dynamic> toJson() { return {
  'data': data,
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('id') && json['id'] is String; } 
PostEventRawUpdateResponse copyWith({Map<String,dynamic>? data, String? id, }) { return PostEventRawUpdateResponse(
  data: data ?? this.data,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventRawUpdateResponse &&
          data == other.data &&
          id == other.id; } 
@override int get hashCode { return Object.hash(data, id); } 
@override String toString() { return 'PostEventRawUpdateResponse(data: $data, id: $id)'; } 
 }
