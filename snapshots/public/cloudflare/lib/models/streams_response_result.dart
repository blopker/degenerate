// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_connection_schema.dart';import 'cloudflare_pipelines_format.dart';import 'streams_response_result_http.dart';import 'streams_response_result_worker_binding.dart';@immutable final class StreamsResponseResult {const StreamsResponseResult({required this.createdAt, required this.http, required this.id, required this.modifiedAt, required this.name, required this.version, required this.workerBinding, this.endpoint, this.format, this.schema, });

factory StreamsResponseResult.fromJson(Map<String, dynamic> json) { return StreamsResponseResult(
  createdAt: DateTime.parse(json['created_at'] as String),
  endpoint: json['endpoint'] != null ? Uri.parse(json['endpoint'] as String) : null,
  format: json['format'] != null ? CloudflarePipelinesFormat.fromJson(json['format'] as Map<String, dynamic>) : null,
  http: StreamsResponseResultHttp.fromJson(json['http'] as Map<String, dynamic>),
  id: json['id'] as String,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  name: json['name'] as String,
  schema: json['schema'] != null ? CloudflarePipelinesConnectionSchema.fromJson(json['schema'] as Map<String, dynamic>) : null,
  version: (json['version'] as num).toInt(),
  workerBinding: StreamsResponseResultWorkerBinding.fromJson(json['worker_binding'] as Map<String, dynamic>),
); }

final DateTime createdAt;

/// Indicates the endpoint URL of this stream.
final Uri? endpoint;

final CloudflarePipelinesFormat? format;

final StreamsResponseResultHttp http;

/// Indicates a unique identifier for this stream.
final String id;

final DateTime modifiedAt;

/// Indicates the name of the Stream.
final String name;

final CloudflarePipelinesConnectionSchema? schema;

/// Indicates the current version of this stream.
final int version;

final StreamsResponseResultWorkerBinding workerBinding;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  if (endpoint != null) 'endpoint': endpoint?.toString(),
  if (format != null) 'format': format?.toJson(),
  'http': http.toJson(),
  'id': id,
  'modified_at': modifiedAt.toIso8601String(),
  'name': name,
  if (schema != null) 'schema': schema?.toJson(),
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
StreamsResponseResult copyWith({DateTime? createdAt, Uri Function()? endpoint, CloudflarePipelinesFormat Function()? format, StreamsResponseResultHttp? http, String? id, DateTime? modifiedAt, String? name, CloudflarePipelinesConnectionSchema Function()? schema, int? version, StreamsResponseResultWorkerBinding? workerBinding, }) { return StreamsResponseResult(
  createdAt: createdAt ?? this.createdAt,
  endpoint: endpoint != null ? endpoint() : this.endpoint,
  format: format != null ? format() : this.format,
  http: http ?? this.http,
  id: id ?? this.id,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  name: name ?? this.name,
  schema: schema != null ? schema() : this.schema,
  version: version ?? this.version,
  workerBinding: workerBinding ?? this.workerBinding,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamsResponseResult &&
          createdAt == other.createdAt &&
          endpoint == other.endpoint &&
          format == other.format &&
          http == other.http &&
          id == other.id &&
          modifiedAt == other.modifiedAt &&
          name == other.name &&
          schema == other.schema &&
          version == other.version &&
          workerBinding == other.workerBinding; } 
@override int get hashCode { return Object.hash(createdAt, endpoint, format, http, id, modifiedAt, name, schema, version, workerBinding); } 
@override String toString() { return 'StreamsResponseResult(createdAt: $createdAt, endpoint: $endpoint, format: $format, http: $http, id: $id, modifiedAt: $modifiedAt, name: $name, schema: $schema, version: $version, workerBinding: $workerBinding)'; } 
 }
