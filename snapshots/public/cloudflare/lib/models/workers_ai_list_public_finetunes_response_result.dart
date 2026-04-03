// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersAiListPublicFinetunesResponseResult {const WorkersAiListPublicFinetunesResponseResult({required this.createdAt, required this.id, required this.model, required this.modifiedAt, required this.name, required this.public, this.description, });

factory WorkersAiListPublicFinetunesResponseResult.fromJson(Map<String, dynamic> json) { return WorkersAiListPublicFinetunesResponseResult(
  createdAt: DateTime.parse(json['created_at'] as String),
  description: json['description'] as String?,
  id: json['id'] as String,
  model: json['model'] as String,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  name: json['name'] as String,
  public: json['public'] as bool,
); }

final DateTime createdAt;

final String? description;

final String id;

final String model;

final DateTime modifiedAt;

final String name;

final bool public;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'description': ?description,
  'id': id,
  'model': model,
  'modified_at': modifiedAt.toIso8601String(),
  'name': name,
  'public': public,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('model') && json['model'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('public') && json['public'] is bool; } 
WorkersAiListPublicFinetunesResponseResult copyWith({DateTime? createdAt, String Function()? description, String? id, String? model, DateTime? modifiedAt, String? name, bool? public, }) { return WorkersAiListPublicFinetunesResponseResult(
  createdAt: createdAt ?? this.createdAt,
  description: description != null ? description() : this.description,
  id: id ?? this.id,
  model: model ?? this.model,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  name: name ?? this.name,
  public: public ?? this.public,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiListPublicFinetunesResponseResult &&
          createdAt == other.createdAt &&
          description == other.description &&
          id == other.id &&
          model == other.model &&
          modifiedAt == other.modifiedAt &&
          name == other.name &&
          public == other.public; } 
@override int get hashCode { return Object.hash(createdAt, description, id, model, modifiedAt, name, public); } 
@override String toString() { return 'WorkersAiListPublicFinetunesResponseResult(createdAt: $createdAt, description: $description, id: $id, model: $model, modifiedAt: $modifiedAt, name: $name, public: $public)'; } 
 }
