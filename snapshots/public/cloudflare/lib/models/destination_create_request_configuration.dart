// GENERATED CODE - DO NOT MODIFY BY HAND

final class DestinationCreateRequestConfigurationLogpushDataset {const DestinationCreateRequestConfigurationLogpushDataset._(this.value);

factory DestinationCreateRequestConfigurationLogpushDataset.fromJson(String json) { return switch (json) {
  'opentelemetry-traces' => opentelemetryTraces,
  'opentelemetry-logs' => opentelemetryLogs,
  _ => DestinationCreateRequestConfigurationLogpushDataset._(json),
}; }

static const DestinationCreateRequestConfigurationLogpushDataset opentelemetryTraces = DestinationCreateRequestConfigurationLogpushDataset._('opentelemetry-traces');

static const DestinationCreateRequestConfigurationLogpushDataset opentelemetryLogs = DestinationCreateRequestConfigurationLogpushDataset._('opentelemetry-logs');

static const List<DestinationCreateRequestConfigurationLogpushDataset> values = [opentelemetryTraces, opentelemetryLogs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationCreateRequestConfigurationLogpushDataset && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationCreateRequestConfigurationLogpushDataset($value)'; } 
 }
final class DestinationCreateRequestConfigurationType {const DestinationCreateRequestConfigurationType._(this.value);

factory DestinationCreateRequestConfigurationType.fromJson(String json) { return switch (json) {
  'logpush' => logpush,
  _ => DestinationCreateRequestConfigurationType._(json),
}; }

static const DestinationCreateRequestConfigurationType logpush = DestinationCreateRequestConfigurationType._('logpush');

static const List<DestinationCreateRequestConfigurationType> values = [logpush];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationCreateRequestConfigurationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationCreateRequestConfigurationType($value)'; } 
 }
final class DestinationCreateRequestConfiguration {const DestinationCreateRequestConfiguration({required this.headers, required this.logpushDataset, required this.type, required this.url, });

factory DestinationCreateRequestConfiguration.fromJson(Map<String, dynamic> json) { return DestinationCreateRequestConfiguration(
  headers: (json['headers'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  logpushDataset: DestinationCreateRequestConfigurationLogpushDataset.fromJson(json['logpushDataset'] as String),
  type: DestinationCreateRequestConfigurationType.fromJson(json['type'] as String),
  url: json['url'] as String,
); }

final Map<String,String> headers;

final DestinationCreateRequestConfigurationLogpushDataset logpushDataset;

final DestinationCreateRequestConfigurationType type;

final String url;

Map<String, dynamic> toJson() { return {
  'headers': headers,
  'logpushDataset': logpushDataset.toJson(),
  'type': type.toJson(),
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('headers') &&
      json.containsKey('logpushDataset') &&
      json.containsKey('type') &&
      json.containsKey('url') && json['url'] is String; } 
DestinationCreateRequestConfiguration copyWith({Map<String,String>? headers, DestinationCreateRequestConfigurationLogpushDataset? logpushDataset, DestinationCreateRequestConfigurationType? type, String? url, }) { return DestinationCreateRequestConfiguration(
  headers: headers ?? this.headers,
  logpushDataset: logpushDataset ?? this.logpushDataset,
  type: type ?? this.type,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationCreateRequestConfiguration &&
          headers == other.headers &&
          logpushDataset == other.logpushDataset &&
          type == other.type &&
          url == other.url; } 
@override int get hashCode { return Object.hash(headers, logpushDataset, type, url); } 
@override String toString() { return 'DestinationCreateRequestConfiguration(headers: $headers, logpushDataset: $logpushDataset, type: $type, url: $url)'; } 
 }
