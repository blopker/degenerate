// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// An SSH key granting access to a single repository.
@immutable final class DeployKey {const DeployKey({required this.id, required this.key, required this.url, required this.title, required this.verified, required this.createdAt, required this.readOnly, this.addedBy = const Omittable.absent(), this.lastUsed = const Omittable.absent(), this.enabled, });

factory DeployKey.fromJson(Map<String, dynamic> json) { return DeployKey(
  id: (json['id'] as num).toInt(),
  key: json['key'] as String,
  url: json['url'] as String,
  title: json['title'] as String,
  verified: json['verified'] as bool,
  createdAt: json['created_at'] as String,
  readOnly: json['read_only'] as bool,
  addedBy: json.containsKey('added_by') ? Omittable(json['added_by'] as String?) : const Omittable.absent(),
  lastUsed: json.containsKey('last_used') ? Omittable(json['last_used'] != null ? DateTime.parse(json['last_used'] as String) : null) : const Omittable.absent(),
  enabled: json['enabled'] as bool?,
); }

final int id;

final String key;

final String url;

final String title;

final bool verified;

final String createdAt;

final bool readOnly;

final Omittable<String?> addedBy;

final Omittable<DateTime?> lastUsed;

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'id': id,
  'key': key,
  'url': url,
  'title': title,
  'verified': verified,
  'created_at': createdAt,
  'read_only': readOnly,
  if (addedBy.isPresent) 'added_by': addedBy.value,
  if (lastUsed.isPresent) 'last_used': lastUsed.value?.toIso8601String(),
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('key') && json['key'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('verified') && json['verified'] is bool &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('read_only') && json['read_only'] is bool; } 
DeployKey copyWith({int? id, String? key, String? url, String? title, bool? verified, String? createdAt, bool? readOnly, Omittable<String?>? addedBy, Omittable<DateTime?>? lastUsed, bool? Function()? enabled, }) { return DeployKey(
  id: id ?? this.id,
  key: key ?? this.key,
  url: url ?? this.url,
  title: title ?? this.title,
  verified: verified ?? this.verified,
  createdAt: createdAt ?? this.createdAt,
  readOnly: readOnly ?? this.readOnly,
  addedBy: addedBy ?? this.addedBy,
  lastUsed: lastUsed ?? this.lastUsed,
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeployKey &&
          id == other.id &&
          key == other.key &&
          url == other.url &&
          title == other.title &&
          verified == other.verified &&
          createdAt == other.createdAt &&
          readOnly == other.readOnly &&
          addedBy == other.addedBy &&
          lastUsed == other.lastUsed &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(id, key, url, title, verified, createdAt, readOnly, addedBy, lastUsed, enabled); } 
@override String toString() { return 'DeployKey(id: $id, key: $key, url: $url, title: $title, verified: $verified, createdAt: $createdAt, readOnly: $readOnly, addedBy: $addedBy, lastUsed: $lastUsed, enabled: $enabled)'; } 
 }
