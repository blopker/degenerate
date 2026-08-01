// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Key
@immutable final class Key {const Key({required this.key, required this.id, required this.url, required this.title, required this.createdAt, required this.verified, required this.readOnly, this.lastUsed = const Omittable.absent(), });

factory Key.fromJson(Map<String, dynamic> json) { return Key(
  key: json['key'] as String,
  id: (json['id'] as num).toInt(),
  url: json['url'] as String,
  title: json['title'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  verified: json['verified'] as bool,
  readOnly: json['read_only'] as bool,
  lastUsed: json.containsKey('last_used') ? Omittable(json['last_used'] != null ? DateTime.parse(json['last_used'] as String) : null) : const Omittable.absent(),
); }

final String key;

final int id;

final String url;

final String title;

final DateTime createdAt;

final bool verified;

final bool readOnly;

final Omittable<DateTime?> lastUsed;

Map<String, dynamic> toJson() { return {
  'key': key,
  'id': id,
  'url': url,
  'title': title,
  'created_at': createdAt.toIso8601String(),
  'verified': verified,
  'read_only': readOnly,
  if (lastUsed.isPresent) 'last_used': lastUsed.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('verified') && json['verified'] is bool &&
      json.containsKey('read_only') && json['read_only'] is bool; } 
Key copyWith({String? key, int? id, String? url, String? title, DateTime? createdAt, bool? verified, bool? readOnly, Omittable<DateTime?>? lastUsed, }) { return Key(
  key: key ?? this.key,
  id: id ?? this.id,
  url: url ?? this.url,
  title: title ?? this.title,
  createdAt: createdAt ?? this.createdAt,
  verified: verified ?? this.verified,
  readOnly: readOnly ?? this.readOnly,
  lastUsed: lastUsed ?? this.lastUsed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Key &&
          key == other.key &&
          id == other.id &&
          url == other.url &&
          title == other.title &&
          createdAt == other.createdAt &&
          verified == other.verified &&
          readOnly == other.readOnly &&
          lastUsed == other.lastUsed; } 
@override int get hashCode { return Object.hash(key, id, url, title, createdAt, verified, readOnly, lastUsed); } 
@override String toString() { return 'Key(key: $key, id: $id, url: $url, title: $title, createdAt: $createdAt, verified: $verified, readOnly: $readOnly, lastUsed: $lastUsed)'; } 
 }
