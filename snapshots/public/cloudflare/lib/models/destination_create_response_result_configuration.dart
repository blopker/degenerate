// GENERATED CODE - DO NOT MODIFY BY HAND

final class DestinationCreateResponseResultConfigurationLogpushDataset {const DestinationCreateResponseResultConfigurationLogpushDataset._(this.value);

factory DestinationCreateResponseResultConfigurationLogpushDataset.fromJson(String json) { return switch (json) {
  'opentelemetry-traces' => opentelemetryTraces,
  'opentelemetry-logs' => opentelemetryLogs,
  _ => DestinationCreateResponseResultConfigurationLogpushDataset._(json),
}; }

static const DestinationCreateResponseResultConfigurationLogpushDataset opentelemetryTraces = DestinationCreateResponseResultConfigurationLogpushDataset._('opentelemetry-traces');

static const DestinationCreateResponseResultConfigurationLogpushDataset opentelemetryLogs = DestinationCreateResponseResultConfigurationLogpushDataset._('opentelemetry-logs');

static const List<DestinationCreateResponseResultConfigurationLogpushDataset> values = [opentelemetryTraces, opentelemetryLogs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationCreateResponseResultConfigurationLogpushDataset && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationCreateResponseResultConfigurationLogpushDataset($value)'; } 
 }
final class DestinationCreateResponseResultConfigurationType {const DestinationCreateResponseResultConfigurationType._(this.value);

factory DestinationCreateResponseResultConfigurationType.fromJson(String json) { return switch (json) {
  'logpush' => logpush,
  _ => DestinationCreateResponseResultConfigurationType._(json),
}; }

static const DestinationCreateResponseResultConfigurationType logpush = DestinationCreateResponseResultConfigurationType._('logpush');

static const List<DestinationCreateResponseResultConfigurationType> values = [logpush];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationCreateResponseResultConfigurationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationCreateResponseResultConfigurationType($value)'; } 
 }
final class DestinationCreateResponseResultConfiguration {const DestinationCreateResponseResultConfiguration({required this.destinationConf, required this.logpushDataset, required this.logpushJob, required this.type, required this.url, });

factory DestinationCreateResponseResultConfiguration.fromJson(Map<String, dynamic> json) { return DestinationCreateResponseResultConfiguration(
  destinationConf: json['destination_conf'] as String,
  logpushDataset: DestinationCreateResponseResultConfigurationLogpushDataset.fromJson(json['logpushDataset'] as String),
  logpushJob: (json['logpushJob'] as num).toDouble(),
  type: DestinationCreateResponseResultConfigurationType.fromJson(json['type'] as String),
  url: json['url'] as String,
); }

final String destinationConf;

final DestinationCreateResponseResultConfigurationLogpushDataset logpushDataset;

final double logpushJob;

final DestinationCreateResponseResultConfigurationType type;

final String url;

Map<String, dynamic> toJson() { return {
  'destination_conf': destinationConf,
  'logpushDataset': logpushDataset.toJson(),
  'logpushJob': logpushJob,
  'type': type.toJson(),
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destination_conf') && json['destination_conf'] is String &&
      json.containsKey('logpushDataset') &&
      json.containsKey('logpushJob') && json['logpushJob'] is num &&
      json.containsKey('type') &&
      json.containsKey('url') && json['url'] is String; } 
DestinationCreateResponseResultConfiguration copyWith({String? destinationConf, DestinationCreateResponseResultConfigurationLogpushDataset? logpushDataset, double? logpushJob, DestinationCreateResponseResultConfigurationType? type, String? url, }) { return DestinationCreateResponseResultConfiguration(
  destinationConf: destinationConf ?? this.destinationConf,
  logpushDataset: logpushDataset ?? this.logpushDataset,
  logpushJob: logpushJob ?? this.logpushJob,
  type: type ?? this.type,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationCreateResponseResultConfiguration &&
          destinationConf == other.destinationConf &&
          logpushDataset == other.logpushDataset &&
          logpushJob == other.logpushJob &&
          type == other.type &&
          url == other.url; } 
@override int get hashCode { return Object.hash(destinationConf, logpushDataset, logpushJob, type, url); } 
@override String toString() { return 'DestinationCreateResponseResultConfiguration(destinationConf: $destinationConf, logpushDataset: $logpushDataset, logpushJob: $logpushJob, type: $type, url: $url)'; } 
 }
