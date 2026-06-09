// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteItemResponse {const DeleteItemResponse({required this.deleted});

factory DeleteItemResponse.fromJson(Map<String, dynamic> json) { return DeleteItemResponse(
  deleted: json['deleted'] as bool,
); }

final bool deleted;

Map<String, dynamic> toJson() { return {
  'deleted': deleted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deleted') && json['deleted'] is bool; } 
DeleteItemResponse copyWith({bool? deleted}) { return DeleteItemResponse(
  deleted: deleted ?? this.deleted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteItemResponse &&
          deleted == other.deleted; } 
@override int get hashCode { return deleted.hashCode; } 
@override String toString() { return 'DeleteItemResponse(deleted: $deleted)'; } 
 }
