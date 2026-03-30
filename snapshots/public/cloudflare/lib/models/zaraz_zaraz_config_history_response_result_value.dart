// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zaraz_zaraz_config_return.dart';/// Configuration record correspoding to an ID provided in query params
final class ZarazZarazConfigHistoryResponseResultValue {const ZarazZarazConfigHistoryResponseResultValue({required this.createdAt, required this.id, required this.updatedAt, required this.userId, required this.config, });

factory ZarazZarazConfigHistoryResponseResultValue.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigHistoryResponseResultValue(
  createdAt: DateTime.parse(json['createdAt'] as String),
  id: (json['id'] as num).toInt(),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  userId: json['userId'] as String,
  config: ZarazZarazConfigReturn.fromJson(json['config'] as Map<String, dynamic>),
); }

/// Date and time the configuration was created
final DateTime createdAt;

/// ID of the configuration
final int id;

/// Date and time the configuration was last updated
final DateTime updatedAt;

/// Alpha-numeric ID of the account user who published the configuration
final String userId;

final ZarazZarazConfigReturn config;

Map<String, dynamic> toJson() { return {
  'createdAt': createdAt.toIso8601String(),
  'id': id,
  'updatedAt': updatedAt.toIso8601String(),
  'userId': userId,
  'config': config.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('createdAt') && json['createdAt'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('updatedAt') && json['updatedAt'] is String &&
      json.containsKey('userId') && json['userId'] is String &&
      json.containsKey('config'); } 
ZarazZarazConfigHistoryResponseResultValue copyWith({DateTime? createdAt, int? id, DateTime? updatedAt, String? userId, ZarazZarazConfigReturn? config, }) { return ZarazZarazConfigHistoryResponseResultValue(
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  updatedAt: updatedAt ?? this.updatedAt,
  userId: userId ?? this.userId,
  config: config ?? this.config,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigHistoryResponseResultValue &&
          createdAt == other.createdAt &&
          id == other.id &&
          updatedAt == other.updatedAt &&
          userId == other.userId &&
          config == other.config; } 
@override int get hashCode { return Object.hash(createdAt, id, updatedAt, userId, config); } 
@override String toString() { return 'ZarazZarazConfigHistoryResponseResultValue(createdAt: $createdAt, id: $id, updatedAt: $updatedAt, userId: $userId, config: $config)'; } 
 }
