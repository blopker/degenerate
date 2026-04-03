// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Data source for annotations.
@immutable final class RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource {const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._(this.value);

factory RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(String json) { return switch (json) {
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
  _ => RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._(json),
}; }

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource all = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('ALL');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource aiBots = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_BOTS');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource aiGateway = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_GATEWAY');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource bgp = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('BGP');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource bots = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('BOTS');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource connectionAnomaly = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('CONNECTION_ANOMALY');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource ct = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('CT');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource dns = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource dnsMagnitude = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_MAGNITUDE');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource dnsAs112 = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_AS112');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource dos = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('DOS');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource emailRouting = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_ROUTING');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource emailSecurity = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_SECURITY');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource fw = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource fwPg = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW_PG');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource http = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource httpControl = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CONTROL');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource httpCrawlerReferer = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CRAWLER_REFERER');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource httpOrigins = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_ORIGINS');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource iqi = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('IQI');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource leakedCredentials = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('LEAKED_CREDENTIALS');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource net = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('NET');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource robotsTxt = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('ROBOTS_TXT');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource speed = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('SPEED');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource workersAi = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource._('WORKERS_AI');

static const List<RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource> values = [all, aiBots, aiGateway, bgp, bots, connectionAnomaly, ct, dns, dnsMagnitude, dnsAs112, dos, emailRouting, emailSecurity, fw, fwPg, http, httpControl, httpCrawlerReferer, httpOrigins, iqi, leakedCredentials, net, robotsTxt, speed, workersAi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource($value)'; } 
 }
/// Event type for annotations.
@immutable final class RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType {const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType._(this.value);

factory RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType._(json),
}; }

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType event = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType._('EVENT');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType general = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType._('GENERAL');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType outage = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType._('OUTAGE');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType partialProjection = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType pipeline = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType._('PIPELINE');

static const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType trafficAnomaly = RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType($value)'; } 
 }
/// Annotation associated with the result (e.g. outage or other type of event).
@immutable final class RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotations {const RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotations({required this.dataSource, required this.description, required this.endDate, required this.eventType, required this.isInstantaneous, required this.linkedUrl, required this.startDate, });

factory RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotations(
  dataSource: RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(json['dataSource'] as String),
  description: json['description'] as String,
  endDate: DateTime.parse(json['endDate'] as String),
  eventType: RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(json['eventType'] as String),
  isInstantaneous: json['isInstantaneous'] as bool,
  linkedUrl: Uri.parse(json['linkedUrl'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
); }

/// Data source for annotations.
final RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource dataSource;

final String description;

final DateTime endDate;

/// Event type for annotations.
final RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType eventType;

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
RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotations copyWith({RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsDataSource? dataSource, String? description, DateTime? endDate, RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotationsEventType? eventType, bool? isInstantaneous, Uri? linkedUrl, DateTime? startDate, }) { return RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotations(
  dataSource: dataSource ?? this.dataSource,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  eventType: eventType ?? this.eventType,
  isInstantaneous: isInstantaneous ?? this.isInstantaneous,
  linkedUrl: linkedUrl ?? this.linkedUrl,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotations &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          isInstantaneous == other.isInstantaneous &&
          linkedUrl == other.linkedUrl &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(dataSource, description, endDate, eventType, isInstantaneous, linkedUrl, startDate); } 
@override String toString() { return 'RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfoAnnotations(dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, isInstantaneous: $isInstantaneous, linkedUrl: $linkedUrl, startDate: $startDate)'; } 
 }
