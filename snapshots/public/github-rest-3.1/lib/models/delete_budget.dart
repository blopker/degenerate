// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteBudget {const DeleteBudget({required this.message, required this.id, });

factory DeleteBudget.fromJson(Map<String, dynamic> json) { return DeleteBudget(
  message: json['message'] as String,
  id: json['id'] as String,
); }

/// A message indicating the result of the deletion operation
final String message;

/// The ID of the deleted budget
final String id;

Map<String, dynamic> toJson() { return {
  'message': message,
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String &&
      json.containsKey('id') && json['id'] is String; } 
DeleteBudget copyWith({String? message, String? id, }) { return DeleteBudget(
  message: message ?? this.message,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteBudget &&
          message == other.message &&
          id == other.id; } 
@override int get hashCode { return Object.hash(message, id); } 
@override String toString() { return 'DeleteBudget(message: $message, id: $id)'; } 
 }
