// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Key Simple
@immutable final class KeySimple {const KeySimple({required this.id, required this.key, this.createdAt, this.lastUsed = const Omittable.absent(), });

factory KeySimple.fromJson(Map<String, dynamic> json) { return KeySimple(
  id: (json['id'] as num).toInt(),
  key: json['key'] as String,
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  lastUsed: json.containsKey('last_used') ? Omittable(json['last_used'] != null ? DateTime.parse(json['last_used'] as String) : null) : const Omittable.absent(),
); }

final int id;

final String key;

final DateTime? createdAt;

final Omittable<DateTime?> lastUsed;

Map<String, dynamic> toJson() { return {
  'id': id,
  'key': key,
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  if (lastUsed.isPresent) 'last_used': lastUsed.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('key') && json['key'] is String; } 
KeySimple copyWith({int? id, String? key, DateTime? Function()? createdAt, Omittable<DateTime?>? lastUsed, }) { return KeySimple(
  id: id ?? this.id,
  key: key ?? this.key,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  lastUsed: lastUsed ?? this.lastUsed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KeySimple &&
          id == other.id &&
          key == other.key &&
          createdAt == other.createdAt &&
          lastUsed == other.lastUsed; } 
@override int get hashCode { return Object.hash(id, key, createdAt, lastUsed); } 
@override String toString() { return 'KeySimple(id: $id, key: $key, createdAt: $createdAt, lastUsed: $lastUsed)'; } 
 }
