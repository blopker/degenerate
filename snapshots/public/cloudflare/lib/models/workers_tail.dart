// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_identifier.dart';@immutable final class WorkersTail {const WorkersTail({required this.expiresAt, required this.id, required this.url, });

factory WorkersTail.fromJson(Map<String, dynamic> json) { return WorkersTail(
  expiresAt: json['expires_at'] as String,
  id: WorkersIdentifier.fromJson(json['id'] as String),
  url: json['url'] as String,
); }

final String expiresAt;

/// Identifier.
final WorkersIdentifier id;

final String url;

Map<String, dynamic> toJson() { return {
  'expires_at': expiresAt,
  'id': id.toJson(),
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('expires_at') && json['expires_at'] is String &&
      json.containsKey('id') &&
      json.containsKey('url') && json['url'] is String; } 
WorkersTail copyWith({String? expiresAt, WorkersIdentifier? id, String? url, }) { return WorkersTail(
  expiresAt: expiresAt ?? this.expiresAt,
  id: id ?? this.id,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersTail &&
          expiresAt == other.expiresAt &&
          id == other.id &&
          url == other.url; } 
@override int get hashCode { return Object.hash(expiresAt, id, url); } 
@override String toString() { return 'WorkersTail(expiresAt: $expiresAt, id: $id, url: $url)'; } 
 }
