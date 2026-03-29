// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the desired compression algorithm and format.
final class CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType {const CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType._(this.value);

factory CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType.fromJson(String json) { return switch (json) {
  'none' => none,
  'gzip' => gzip,
  'deflate' => deflate,
  _ => CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType._(json),
}; }

static const CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType none = CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType._('none');

static const CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType gzip = CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType._('gzip');

static const CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType deflate = CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType._('deflate');

static const List<CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType> values = [none, gzip, deflate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType($value)'; } 
 }
final class CloudflarePipelinesWorkersPipelinesPipelineDestinationCompression {const CloudflarePipelinesWorkersPipelinesPipelineDestinationCompression({this.type = CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType.gzip});

factory CloudflarePipelinesWorkersPipelinesPipelineDestinationCompression.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesWorkersPipelinesPipelineDestinationCompression(
  type: CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType.fromJson(json['type'] as String),
); }

/// Specifies the desired compression algorithm and format.
final CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
CloudflarePipelinesWorkersPipelinesPipelineDestinationCompression copyWith({CloudflarePipelinesWorkersPipelinesPipelineDestinationCompressionType? type}) { return CloudflarePipelinesWorkersPipelinesPipelineDestinationCompression(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesWorkersPipelinesPipelineDestinationCompression &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'CloudflarePipelinesWorkersPipelinesPipelineDestinationCompression(type: $type)'; } 
 }
