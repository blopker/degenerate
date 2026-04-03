// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Data source for annotations.
@immutable final class RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource {const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._(this.value);

factory RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(String json) { return switch (json) {
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
  _ => RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._(json),
}; }

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource all = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('ALL');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource aiBots = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_BOTS');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource aiGateway = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_GATEWAY');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource bgp = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('BGP');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource bots = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('BOTS');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource connectionAnomaly = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('CONNECTION_ANOMALY');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource ct = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('CT');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dns = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dnsMagnitude = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_MAGNITUDE');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dnsAs112 = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_AS112');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dos = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DOS');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource emailRouting = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_ROUTING');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource emailSecurity = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_SECURITY');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource fw = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource fwPg = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW_PG');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource http = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource httpControl = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CONTROL');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource httpCrawlerReferer = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CRAWLER_REFERER');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource httpOrigins = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_ORIGINS');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource iqi = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('IQI');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource leakedCredentials = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('LEAKED_CREDENTIALS');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource net = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('NET');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource robotsTxt = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('ROBOTS_TXT');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource speed = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('SPEED');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource workersAi = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('WORKERS_AI');

static const List<RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource> values = [all, aiBots, aiGateway, bgp, bots, connectionAnomaly, ct, dns, dnsMagnitude, dnsAs112, dos, emailRouting, emailSecurity, fw, fwPg, http, httpControl, httpCrawlerReferer, httpOrigins, iqi, leakedCredentials, net, robotsTxt, speed, workersAi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource($value)'; } 
 }
/// Event type for annotations.
@immutable final class RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType {const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType._(this.value);

factory RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType._(json),
}; }

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType event = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('EVENT');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType general = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('GENERAL');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType outage = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('OUTAGE');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType partialProjection = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType pipeline = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('PIPELINE');

static const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType trafficAnomaly = RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType($value)'; } 
 }
/// Annotation associated with the result (e.g. outage or other type of event).
@immutable final class RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotations {const RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotations({required this.dataSource, required this.description, required this.endDate, required this.eventType, required this.isInstantaneous, required this.linkedUrl, required this.startDate, });

factory RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotations(
  dataSource: RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(json['dataSource'] as String),
  description: json['description'] as String,
  endDate: DateTime.parse(json['endDate'] as String),
  eventType: RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(json['eventType'] as String),
  isInstantaneous: json['isInstantaneous'] as bool,
  linkedUrl: Uri.parse(json['linkedUrl'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
); }

/// Data source for annotations.
final RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dataSource;

final String description;

final DateTime endDate;

/// Event type for annotations.
final RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType eventType;

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
RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotations copyWith({RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsDataSource? dataSource, String? description, DateTime? endDate, RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotationsEventType? eventType, bool? isInstantaneous, Uri? linkedUrl, DateTime? startDate, }) { return RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotations(
  dataSource: dataSource ?? this.dataSource,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  eventType: eventType ?? this.eventType,
  isInstantaneous: isInstantaneous ?? this.isInstantaneous,
  linkedUrl: linkedUrl ?? this.linkedUrl,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotations &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          isInstantaneous == other.isInstantaneous &&
          linkedUrl == other.linkedUrl &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(dataSource, description, endDate, eventType, isInstantaneous, linkedUrl, startDate); } 
@override String toString() { return 'RadarGetDnsAs112SummaryResponseResultMetaConfidenceInfoAnnotations(dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, isInstantaneous: $isInstantaneous, linkedUrl: $linkedUrl, startDate: $startDate)'; } 
 }
