// GENERATED CODE - DO NOT MODIFY BY HAND

/// Data source for annotations.
final class RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource {const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._(this.value);

factory RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(String json) { return switch (json) {
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
  _ => RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._(json),
}; }

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource all = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('ALL');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource aiBots = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_BOTS');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource aiGateway = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_GATEWAY');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource bgp = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('BGP');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource bots = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('BOTS');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource connectionAnomaly = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('CONNECTION_ANOMALY');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource ct = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('CT');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource dns = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource dnsMagnitude = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_MAGNITUDE');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource dnsAs112 = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_AS112');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource dos = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DOS');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource emailRouting = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_ROUTING');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource emailSecurity = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_SECURITY');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource fw = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource fwPg = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW_PG');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource http = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource httpControl = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CONTROL');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource httpCrawlerReferer = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CRAWLER_REFERER');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource httpOrigins = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_ORIGINS');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource iqi = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('IQI');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource leakedCredentials = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('LEAKED_CREDENTIALS');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource net = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('NET');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource robotsTxt = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('ROBOTS_TXT');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource speed = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('SPEED');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource workersAi = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource._('WORKERS_AI');

static const List<RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource> values = [all, aiBots, aiGateway, bgp, bots, connectionAnomaly, ct, dns, dnsMagnitude, dnsAs112, dos, emailRouting, emailSecurity, fw, fwPg, http, httpControl, httpCrawlerReferer, httpOrigins, iqi, leakedCredentials, net, robotsTxt, speed, workersAi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource($value)'; } 
 }
/// Event type for annotations.
final class RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType {const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._(this.value);

factory RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._(json),
}; }

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType event = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('EVENT');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType general = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('GENERAL');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType outage = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('OUTAGE');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType partialProjection = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType pipeline = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('PIPELINE');

static const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType trafficAnomaly = RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType($value)'; } 
 }
/// Annotation associated with the result (e.g. outage or other type of event).
final class RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotations {const RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotations({required this.dataSource, required this.description, required this.endDate, required this.eventType, required this.isInstantaneous, required this.linkedUrl, required this.startDate, });

factory RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotations(
  dataSource: RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(json['dataSource'] as String),
  description: json['description'] as String,
  endDate: DateTime.parse(json['endDate'] as String),
  eventType: RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(json['eventType'] as String),
  isInstantaneous: json['isInstantaneous'] as bool,
  linkedUrl: Uri.parse(json['linkedUrl'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
); }

/// Data source for annotations.
final RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource dataSource;

final String description;

final DateTime endDate;

/// Event type for annotations.
final RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType eventType;

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
RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotations copyWith({RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsDataSource? dataSource, String? description, DateTime? endDate, RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotationsEventType? eventType, bool? isInstantaneous, Uri? linkedUrl, DateTime? startDate, }) { return RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotations(
  dataSource: dataSource ?? this.dataSource,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  eventType: eventType ?? this.eventType,
  isInstantaneous: isInstantaneous ?? this.isInstantaneous,
  linkedUrl: linkedUrl ?? this.linkedUrl,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotations &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          isInstantaneous == other.isInstantaneous &&
          linkedUrl == other.linkedUrl &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(dataSource, description, endDate, eventType, isInstantaneous, linkedUrl, startDate); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesResponseResultMetaConfidenceInfoAnnotations(dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, isInstantaneous: $isInstantaneous, linkedUrl: $linkedUrl, startDate: $startDate)'; } 
 }
