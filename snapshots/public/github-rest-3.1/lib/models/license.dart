// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// License
final class License {const License({required this.key, required this.name, required this.spdxId, required this.url, required this.nodeId, required this.htmlUrl, required this.description, required this.implementation, required this.permissions, required this.conditions, required this.limitations, required this.body, required this.featured, });

factory License.fromJson(Map<String, dynamic> json) { return License(
  key: json['key'] as String,
  name: json['name'] as String,
  spdxId: json['spdx_id'] as String?,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
  nodeId: json['node_id'] as String,
  htmlUrl: Uri.parse(json['html_url'] as String),
  description: json['description'] as String,
  implementation: json['implementation'] as String,
  permissions: (json['permissions'] as List<dynamic>).map((e) => e as String).toList(),
  conditions: (json['conditions'] as List<dynamic>).map((e) => e as String).toList(),
  limitations: (json['limitations'] as List<dynamic>).map((e) => e as String).toList(),
  body: json['body'] as String,
  featured: json['featured'] as bool,
); }

final String key;

final String name;

final String? spdxId;

final Uri? url;

final String nodeId;

final Uri htmlUrl;

final String description;

final String implementation;

final List<String> permissions;

final List<String> conditions;

final List<String> limitations;

final String body;

final bool featured;

Map<String, dynamic> toJson() { return {
  'key': key,
  'name': name,
  'spdx_id': ?spdxId,
  if (url != null) 'url': url?.toString(),
  'node_id': nodeId,
  'html_url': htmlUrl.toString(),
  'description': description,
  'implementation': implementation,
  'permissions': permissions,
  'conditions': conditions,
  'limitations': limitations,
  'body': body,
  'featured': featured,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('spdx_id') && json['spdx_id'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('implementation') && json['implementation'] is String &&
      json.containsKey('permissions') &&
      json.containsKey('conditions') &&
      json.containsKey('limitations') &&
      json.containsKey('body') && json['body'] is String &&
      json.containsKey('featured') && json['featured'] is bool; } 
License copyWith({String? key, String? name, String? Function()? spdxId, Uri? Function()? url, String? nodeId, Uri? htmlUrl, String? description, String? implementation, List<String>? permissions, List<String>? conditions, List<String>? limitations, String? body, bool? featured, }) { return License(
  key: key ?? this.key,
  name: name ?? this.name,
  spdxId: spdxId != null ? spdxId() : this.spdxId,
  url: url != null ? url() : this.url,
  nodeId: nodeId ?? this.nodeId,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  description: description ?? this.description,
  implementation: implementation ?? this.implementation,
  permissions: permissions ?? this.permissions,
  conditions: conditions ?? this.conditions,
  limitations: limitations ?? this.limitations,
  body: body ?? this.body,
  featured: featured ?? this.featured,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is License &&
          key == other.key &&
          name == other.name &&
          spdxId == other.spdxId &&
          url == other.url &&
          nodeId == other.nodeId &&
          htmlUrl == other.htmlUrl &&
          description == other.description &&
          implementation == other.implementation &&
          listEquals(permissions, other.permissions) &&
          listEquals(conditions, other.conditions) &&
          listEquals(limitations, other.limitations) &&
          body == other.body &&
          featured == other.featured; } 
@override int get hashCode { return Object.hash(key, name, spdxId, url, nodeId, htmlUrl, description, implementation, Object.hashAll(permissions), Object.hashAll(conditions), Object.hashAll(limitations), body, featured); } 
@override String toString() { return 'License(key: $key, name: $name, spdxId: $spdxId, url: $url, nodeId: $nodeId, htmlUrl: $htmlUrl, description: $description, implementation: $implementation, permissions: $permissions, conditions: $conditions, limitations: $limitations, body: $body, featured: $featured)'; } 
 }
