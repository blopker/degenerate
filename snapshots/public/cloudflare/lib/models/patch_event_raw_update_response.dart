// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PatchEventRawUpdateResponse {const PatchEventRawUpdateResponse({required this.data, required this.id, });

factory PatchEventRawUpdateResponse.fromJson(Map<String, dynamic> json) { return PatchEventRawUpdateResponse(
  data: json['data'] as Map<String, dynamic>,
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
PatchEventRawUpdateResponse copyWith({Map<String,dynamic>? data, String? id, }) { return PatchEventRawUpdateResponse(
  data: data ?? this.data,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchEventRawUpdateResponse &&
          data == other.data &&
          id == other.id; } 
@override int get hashCode { return Object.hash(data, id); } 
@override String toString() { return 'PatchEventRawUpdateResponse(data: $data, id: $id)'; } 
 }
