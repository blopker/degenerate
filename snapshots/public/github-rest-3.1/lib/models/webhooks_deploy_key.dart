// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The [`deploy key`](https://docs.github.com/rest/deploy-keys/deploy-keys#get-a-deploy-key) resource.
@immutable final class WebhooksDeployKey {const WebhooksDeployKey({required this.createdAt, required this.id, required this.key, required this.readOnly, required this.title, required this.url, required this.verified, this.addedBy, this.lastUsed, this.enabled, });

factory WebhooksDeployKey.fromJson(Map<String, dynamic> json) { return WebhooksDeployKey(
  addedBy: json['added_by'] as String?,
  createdAt: json['created_at'] as String,
  id: (json['id'] as num).toInt(),
  key: json['key'] as String,
  lastUsed: json['last_used'] as String?,
  readOnly: json['read_only'] as bool,
  title: json['title'] as String,
  url: Uri.parse(json['url'] as String),
  verified: json['verified'] as bool,
  enabled: json['enabled'] as bool?,
); }

final String? addedBy;

final String createdAt;

final int id;

final String key;

final String? lastUsed;

final bool readOnly;

final String title;

final Uri url;

final bool verified;

final bool? enabled;

Map<String, dynamic> toJson() { return {
  'added_by': ?addedBy,
  'created_at': createdAt,
  'id': id,
  'key': key,
  'last_used': ?lastUsed,
  'read_only': readOnly,
  'title': title,
  'url': url.toString(),
  'verified': verified,
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('key') && json['key'] is String &&
      json.containsKey('read_only') && json['read_only'] is bool &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('verified') && json['verified'] is bool; } 
WebhooksDeployKey copyWith({String? Function()? addedBy, String? createdAt, int? id, String? key, String? Function()? lastUsed, bool? readOnly, String? title, Uri? url, bool? verified, bool Function()? enabled, }) { return WebhooksDeployKey(
  addedBy: addedBy != null ? addedBy() : this.addedBy,
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  key: key ?? this.key,
  lastUsed: lastUsed != null ? lastUsed() : this.lastUsed,
  readOnly: readOnly ?? this.readOnly,
  title: title ?? this.title,
  url: url ?? this.url,
  verified: verified ?? this.verified,
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksDeployKey &&
          addedBy == other.addedBy &&
          createdAt == other.createdAt &&
          id == other.id &&
          key == other.key &&
          lastUsed == other.lastUsed &&
          readOnly == other.readOnly &&
          title == other.title &&
          url == other.url &&
          verified == other.verified &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(addedBy, createdAt, id, key, lastUsed, readOnly, title, url, verified, enabled); } 
@override String toString() { return 'WebhooksDeployKey(addedBy: $addedBy, createdAt: $createdAt, id: $id, key: $key, lastUsed: $lastUsed, readOnly: $readOnly, title: $title, url: $url, verified: $verified, enabled: $enabled)'; } 
 }
