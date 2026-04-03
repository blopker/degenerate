// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Data source for annotations.
@immutable final class RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource {const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._(this.value);

factory RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(String json) { return switch (json) {
  'ALL' => all,
  'AI_BOTS' => aiBots,
  'AI_GATEWAY' => aiGateway,
  'BGP' => bgp,
  'BOTS' => bots,
  'CONNECTION_ANOMALY' => connectionAnomaly,
  'CT' => ct,
  'DNS' => dns,
  'DNS_MAGNITUDE' => dnsMagnitude,
  'DNS_AS112' => dnsAs112,
  'DOS' => dos,
  'EMAIL_ROUTING' => emailRouting,
  'EMAIL_SECURITY' => emailSecurity,
  'FW' => fw,
  'FW_PG' => fwPg,
  'HTTP' => http,
  'HTTP_CONTROL' => httpControl,
  'HTTP_CRAWLER_REFERER' => httpCrawlerReferer,
  'HTTP_ORIGINS' => httpOrigins,
  'IQI' => iqi,
  'LEAKED_CREDENTIALS' => leakedCredentials,
  'NET' => net,
  'ROBOTS_TXT' => robotsTxt,
  'SPEED' => speed,
  'WORKERS_AI' => workersAi,
  _ => RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._(json),
}; }

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource all = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('ALL');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource aiBots = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_BOTS');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource aiGateway = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_GATEWAY');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource bgp = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('BGP');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource bots = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('BOTS');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource connectionAnomaly = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('CONNECTION_ANOMALY');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource ct = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('CT');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource dns = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource dnsMagnitude = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_MAGNITUDE');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource dnsAs112 = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_AS112');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource dos = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DOS');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource emailRouting = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_ROUTING');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource emailSecurity = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_SECURITY');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource fw = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource fwPg = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW_PG');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource http = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource httpControl = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CONTROL');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource httpCrawlerReferer = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CRAWLER_REFERER');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource httpOrigins = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_ORIGINS');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource iqi = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('IQI');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource leakedCredentials = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('LEAKED_CREDENTIALS');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource net = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('NET');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource robotsTxt = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('ROBOTS_TXT');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource speed = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('SPEED');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource workersAi = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('WORKERS_AI');

static const List<RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource> values = [all, aiBots, aiGateway, bgp, bots, connectionAnomaly, ct, dns, dnsMagnitude, dnsAs112, dos, emailRouting, emailSecurity, fw, fwPg, http, httpControl, httpCrawlerReferer, httpOrigins, iqi, leakedCredentials, net, robotsTxt, speed, workersAi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource($value)'; } 
 }
/// Event type for annotations.
@immutable final class RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType {const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._(this.value);

factory RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._(json),
}; }

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType event = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('EVENT');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType general = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('GENERAL');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType outage = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('OUTAGE');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType partialProjection = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType pipeline = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('PIPELINE');

static const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType trafficAnomaly = RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType($value)'; } 
 }
/// Annotation associated with the result (e.g. outage or other type of event).
@immutable final class RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotations {const RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotations({required this.dataSource, required this.description, required this.endDate, required this.eventType, required this.isInstantaneous, required this.linkedUrl, required this.startDate, });

factory RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotations(
  dataSource: RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(json['dataSource'] as String),
  description: json['description'] as String,
  endDate: DateTime.parse(json['endDate'] as String),
  eventType: RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(json['eventType'] as String),
  isInstantaneous: json['isInstantaneous'] as bool,
  linkedUrl: Uri.parse(json['linkedUrl'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
); }

/// Data source for annotations.
final RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource dataSource;

final String description;

final DateTime endDate;

/// Event type for annotations.
final RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType eventType;

/// Whether event is a single point in time or a time range.
final bool isInstantaneous;

final Uri linkedUrl;

final DateTime startDate;

Map<String, dynamic> toJson() { return {
  'dataSource': dataSource.toJson(),
  'description': description,
  'endDate': endDate.toIso8601String(),
  'eventType': eventType.toJson(),
  'isInstantaneous': isInstantaneous,
  'linkedUrl': linkedUrl.toString(),
  'startDate': startDate.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dataSource') &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('endDate') && json['endDate'] is String &&
      json.containsKey('eventType') &&
      json.containsKey('isInstantaneous') && json['isInstantaneous'] is bool &&
      json.containsKey('linkedUrl') && json['linkedUrl'] is String &&
      json.containsKey('startDate') && json['startDate'] is String; } 
RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotations copyWith({RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource? dataSource, String? description, DateTime? endDate, RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType? eventType, bool? isInstantaneous, Uri? linkedUrl, DateTime? startDate, }) { return RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotations(
  dataSource: dataSource ?? this.dataSource,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  eventType: eventType ?? this.eventType,
  isInstantaneous: isInstantaneous ?? this.isInstantaneous,
  linkedUrl: linkedUrl ?? this.linkedUrl,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotations &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          isInstantaneous == other.isInstantaneous &&
          linkedUrl == other.linkedUrl &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(dataSource, description, endDate, eventType, isInstantaneous, linkedUrl, startDate); } 
@override String toString() { return 'RadarGetNetflowsTimeseriesResponseResultMetaConfidenceInfoAnnotations(dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, isInstantaneous: $isInstantaneous, linkedUrl: $linkedUrl, startDate: $startDate)'; } 
 }
