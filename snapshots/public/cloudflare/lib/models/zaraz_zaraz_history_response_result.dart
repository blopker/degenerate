// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZarazZarazHistoryResponseResult {const ZarazZarazHistoryResponseResult({required this.createdAt, required this.id, required this.updatedAt, required this.userId, required this.description, });

factory ZarazZarazHistoryResponseResult.fromJson(Map<String, dynamic> json) { return ZarazZarazHistoryResponseResult(
  createdAt: DateTime.parse(json['createdAt'] as String),
  id: (json['id'] as num).toInt(),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  userId: json['userId'] as String,
  description: json['description'] as String,
); }

/// Date and time the configuration was created
final DateTime createdAt;

/// ID of the configuration
final int id;

/// Date and time the configuration was last updated
final DateTime updatedAt;

/// Alpha-numeric ID of the account user who published the configuration
final String userId;

/// Configuration description provided by the user who published this configuration
final String description;

Map<String, dynamic> toJson() { return {
  'createdAt': createdAt.toIso8601String(),
  'id': id,
  'updatedAt': updatedAt.toIso8601String(),
  'userId': userId,
  'description': description,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('createdAt') && json['createdAt'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('updatedAt') && json['updatedAt'] is String &&
      json.containsKey('userId') && json['userId'] is String &&
      json.containsKey('description') && json['description'] is String; } 
ZarazZarazHistoryResponseResult copyWith({DateTime? createdAt, int? id, DateTime? updatedAt, String? userId, String? description, }) { return ZarazZarazHistoryResponseResult(
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  updatedAt: updatedAt ?? this.updatedAt,
  userId: userId ?? this.userId,
  description: description ?? this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazHistoryResponseResult &&
          createdAt == other.createdAt &&
          id == other.id &&
          updatedAt == other.updatedAt &&
          userId == other.userId &&
          description == other.description; } 
@override int get hashCode { return Object.hash(createdAt, id, updatedAt, userId, description); } 
@override String toString() { return 'ZarazZarazHistoryResponseResult(createdAt: $createdAt, id: $id, updatedAt: $updatedAt, userId: $userId, description: $description)'; } 
 }
