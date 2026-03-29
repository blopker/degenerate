// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the format of source data.
final class CloudflarePipelinesWorkersPipelinesBindingSourceFormat {const CloudflarePipelinesWorkersPipelinesBindingSourceFormat._(this.value);

factory CloudflarePipelinesWorkersPipelinesBindingSourceFormat.fromJson(String json) { return switch (json) {
  'json' => $json,
  _ => CloudflarePipelinesWorkersPipelinesBindingSourceFormat._(json),
}; }

static const CloudflarePipelinesWorkersPipelinesBindingSourceFormat $json = CloudflarePipelinesWorkersPipelinesBindingSourceFormat._('json');

static const List<CloudflarePipelinesWorkersPipelinesBindingSourceFormat> values = [$json];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesWorkersPipelinesBindingSourceFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CloudflarePipelinesWorkersPipelinesBindingSourceFormat($value)'; } 
 }
/// [DEPRECATED] Worker binding source configuration. Use the new streams API instead.
final class CloudflarePipelinesWorkersPipelinesBindingSource {const CloudflarePipelinesWorkersPipelinesBindingSource({required this.format, required this.type, });

factory CloudflarePipelinesWorkersPipelinesBindingSource.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesWorkersPipelinesBindingSource(
  format: CloudflarePipelinesWorkersPipelinesBindingSourceFormat.fromJson(json['format'] as String),
  type: json['type'] as String,
); }

/// Specifies the format of source data.
final CloudflarePipelinesWorkersPipelinesBindingSourceFormat format;

final String type;

Map<String, dynamic> toJson() { return {
  'format': format.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('format') &&
      json.containsKey('type') && json['type'] is String; } 
CloudflarePipelinesWorkersPipelinesBindingSource copyWith({CloudflarePipelinesWorkersPipelinesBindingSourceFormat? format, String? type, }) { return CloudflarePipelinesWorkersPipelinesBindingSource(
  format: format ?? this.format,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesWorkersPipelinesBindingSource &&
          format == other.format &&
          type == other.type; } 
@override int get hashCode { return Object.hash(format, type); } 
@override String toString() { return 'CloudflarePipelinesWorkersPipelinesBindingSource(format: $format, type: $type)'; } 
 }
