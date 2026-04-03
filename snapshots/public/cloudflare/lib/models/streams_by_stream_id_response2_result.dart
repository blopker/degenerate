// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_format.dart';import 'streams_by_stream_id_response2_result_http.dart';import 'streams_by_stream_id_response2_result_worker_binding.dart';@immutable final class StreamsByStreamIdResponse2Result {const StreamsByStreamIdResponse2Result({required this.createdAt, required this.http, required this.id, required this.modifiedAt, required this.name, required this.version, required this.workerBinding, this.endpoint, this.format, });

factory StreamsByStreamIdResponse2Result.fromJson(Map<String, dynamic> json) { return StreamsByStreamIdResponse2Result(
  createdAt: DateTime.parse(json['created_at'] as String),
  endpoint: json['endpoint'] != null ? Uri.parse(json['endpoint'] as String) : null,
  format: json['format'] != null ? CloudflarePipelinesFormat.fromJson(json['format'] as Map<String, dynamic>) : null,
  http: StreamsByStreamIdResponse2ResultHttp.fromJson(json['http'] as Map<String, dynamic>),
  id: json['id'] as String,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  name: json['name'] as String,
  version: (json['version'] as num).toInt(),
  workerBinding: StreamsByStreamIdResponse2ResultWorkerBinding.fromJson(json['worker_binding'] as Map<String, dynamic>),
); }

final DateTime createdAt;

/// Indicates the endpoint URL of this stream.
final Uri? endpoint;

final CloudflarePipelinesFormat? format;

final StreamsByStreamIdResponse2ResultHttp http;

/// Indicates a unique identifier for this stream.
final String id;

final DateTime modifiedAt;

/// Indicates the name of the Stream.
final String name;

/// Indicates the current version of this stream.
final int version;

final StreamsByStreamIdResponse2ResultWorkerBinding workerBinding;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  if (endpoint != null) 'endpoint': endpoint?.toString(),
  if (format != null) 'format': format?.toJson(),
  'http': http.toJson(),
  'id': id,
  'modified_at': modifiedAt.toIso8601String(),
  'name': name,
  'version': version,
  'worker_binding': workerBinding.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('http') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('version') && json['version'] is num &&
      json.containsKey('worker_binding'); } 
StreamsByStreamIdResponse2Result copyWith({DateTime? createdAt, Uri Function()? endpoint, CloudflarePipelinesFormat Function()? format, StreamsByStreamIdResponse2ResultHttp? http, String? id, DateTime? modifiedAt, String? name, int? version, StreamsByStreamIdResponse2ResultWorkerBinding? workerBinding, }) { return StreamsByStreamIdResponse2Result(
  createdAt: createdAt ?? this.createdAt,
  endpoint: endpoint != null ? endpoint() : this.endpoint,
  format: format != null ? format() : this.format,
  http: http ?? this.http,
  id: id ?? this.id,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  name: name ?? this.name,
  version: version ?? this.version,
  workerBinding: workerBinding ?? this.workerBinding,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamsByStreamIdResponse2Result &&
          createdAt == other.createdAt &&
          endpoint == other.endpoint &&
          format == other.format &&
          http == other.http &&
          id == other.id &&
          modifiedAt == other.modifiedAt &&
          name == other.name &&
          version == other.version &&
          workerBinding == other.workerBinding; } 
@override int get hashCode { return Object.hash(createdAt, endpoint, format, http, id, modifiedAt, name, version, workerBinding); } 
@override String toString() { return 'StreamsByStreamIdResponse2Result(createdAt: $createdAt, endpoint: $endpoint, format: $format, http: $http, id: $id, modifiedAt: $modifiedAt, name: $name, version: $version, workerBinding: $workerBinding)'; } 
 }
