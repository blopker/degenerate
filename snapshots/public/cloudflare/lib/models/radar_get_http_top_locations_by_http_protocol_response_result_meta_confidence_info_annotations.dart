// GENERATED CODE - DO NOT MODIFY BY HAND

/// Data source for annotations.
final class RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource {const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._(this.value);

factory RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(String json) { return switch (json) {
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
  _ => RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._(json),
}; }

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource all = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('ALL');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource aiBots = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_BOTS');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource aiGateway = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_GATEWAY');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource bgp = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('BGP');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource bots = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('BOTS');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource connectionAnomaly = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('CONNECTION_ANOMALY');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource ct = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('CT');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource dns = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource dnsMagnitude = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_MAGNITUDE');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource dnsAs112 = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_AS112');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource dos = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('DOS');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource emailRouting = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_ROUTING');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource emailSecurity = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_SECURITY');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource fw = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource fwPg = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW_PG');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource http = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource httpControl = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CONTROL');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource httpCrawlerReferer = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CRAWLER_REFERER');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource httpOrigins = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_ORIGINS');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource iqi = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('IQI');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource leakedCredentials = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('LEAKED_CREDENTIALS');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource net = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('NET');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource robotsTxt = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('ROBOTS_TXT');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource speed = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('SPEED');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource workersAi = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource._('WORKERS_AI');

static const List<RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource> values = [all, aiBots, aiGateway, bgp, bots, connectionAnomaly, ct, dns, dnsMagnitude, dnsAs112, dos, emailRouting, emailSecurity, fw, fwPg, http, httpControl, httpCrawlerReferer, httpOrigins, iqi, leakedCredentials, net, robotsTxt, speed, workersAi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource($value)'; } 
 }
/// Event type for annotations.
final class RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType {const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType._(this.value);

factory RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType._(json),
}; }

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType event = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType._('EVENT');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType general = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType._('GENERAL');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType outage = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType._('OUTAGE');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType partialProjection = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType pipeline = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType._('PIPELINE');

static const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType trafficAnomaly = RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType($value)'; } 
 }
/// Annotation associated with the result (e.g. outage or other type of event).
final class RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotations {const RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotations({required this.dataSource, required this.description, required this.endDate, required this.eventType, required this.isInstantaneous, required this.linkedUrl, required this.startDate, });

factory RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotations(
  dataSource: RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(json['dataSource'] as String),
  description: json['description'] as String,
  endDate: DateTime.parse(json['endDate'] as String),
  eventType: RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(json['eventType'] as String),
  isInstantaneous: json['isInstantaneous'] as bool,
  linkedUrl: Uri.parse(json['linkedUrl'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
); }

/// Data source for annotations.
final RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource dataSource;

final String description;

final DateTime endDate;

/// Event type for annotations.
final RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType eventType;

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
RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotations copyWith({RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsDataSource? dataSource, String? description, DateTime? endDate, RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotationsEventType? eventType, bool? isInstantaneous, Uri? linkedUrl, DateTime? startDate, }) { return RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotations(
  dataSource: dataSource ?? this.dataSource,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  eventType: eventType ?? this.eventType,
  isInstantaneous: isInstantaneous ?? this.isInstantaneous,
  linkedUrl: linkedUrl ?? this.linkedUrl,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotations &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          isInstantaneous == other.isInstantaneous &&
          linkedUrl == other.linkedUrl &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(dataSource, description, endDate, eventType, isInstantaneous, linkedUrl, startDate); } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpProtocolResponseResultMetaConfidenceInfoAnnotations(dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, isInstantaneous: $isInstantaneous, linkedUrl: $linkedUrl, startDate: $startDate)'; } 
 }
