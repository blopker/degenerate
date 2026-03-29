// GENERATED CODE - DO NOT MODIFY BY HAND

/// Data source for annotations.
final class RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource {const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._(this.value);

factory RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(String json) { return switch (json) {
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
  _ => RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._(json),
}; }

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource all = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('ALL');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource aiBots = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_BOTS');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource aiGateway = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_GATEWAY');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource bgp = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('BGP');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource bots = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('BOTS');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource connectionAnomaly = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('CONNECTION_ANOMALY');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource ct = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('CT');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource dns = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource dnsMagnitude = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_MAGNITUDE');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource dnsAs112 = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_AS112');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource dos = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('DOS');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource emailRouting = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_ROUTING');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource emailSecurity = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_SECURITY');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource fw = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource fwPg = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW_PG');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource http = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource httpControl = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CONTROL');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource httpCrawlerReferer = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CRAWLER_REFERER');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource httpOrigins = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_ORIGINS');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource iqi = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('IQI');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource leakedCredentials = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('LEAKED_CREDENTIALS');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource net = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('NET');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource robotsTxt = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('ROBOTS_TXT');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource speed = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('SPEED');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource workersAi = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource._('WORKERS_AI');

static const List<RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource> values = [all, aiBots, aiGateway, bgp, bots, connectionAnomaly, ct, dns, dnsMagnitude, dnsAs112, dos, emailRouting, emailSecurity, fw, fwPg, http, httpControl, httpCrawlerReferer, httpOrigins, iqi, leakedCredentials, net, robotsTxt, speed, workersAi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource($value)'; } 
 }
/// Event type for annotations.
final class RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType {const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType._(this.value);

factory RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType._(json),
}; }

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType event = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType._('EVENT');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType general = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType._('GENERAL');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType outage = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType._('OUTAGE');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType partialProjection = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType pipeline = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType._('PIPELINE');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType trafficAnomaly = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType($value)'; } 
 }
/// Annotation associated with the result (e.g. outage or other type of event).
final class RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotations {const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotations({required this.dataSource, required this.description, required this.endDate, required this.eventType, required this.isInstantaneous, required this.linkedUrl, required this.startDate, });

factory RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotations(
  dataSource: RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(json['dataSource'] as String),
  description: json['description'] as String,
  endDate: DateTime.parse(json['endDate'] as String),
  eventType: RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(json['eventType'] as String),
  isInstantaneous: json['isInstantaneous'] as bool,
  linkedUrl: Uri.parse(json['linkedUrl'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
); }

/// Data source for annotations.
final RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource dataSource;

final String description;

final DateTime endDate;

/// Event type for annotations.
final RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType eventType;

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
RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotations copyWith({RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsDataSource? dataSource, String? description, DateTime? endDate, RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotationsEventType? eventType, bool? isInstantaneous, Uri? linkedUrl, DateTime? startDate, }) { return RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotations(
  dataSource: dataSource ?? this.dataSource,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  eventType: eventType ?? this.eventType,
  isInstantaneous: isInstantaneous ?? this.isInstantaneous,
  linkedUrl: linkedUrl ?? this.linkedUrl,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotations &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          isInstantaneous == other.isInstantaneous &&
          linkedUrl == other.linkedUrl &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(dataSource, description, endDate, eventType, isInstantaneous, linkedUrl, startDate); } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfoAnnotations(dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, isInstantaneous: $isInstantaneous, linkedUrl: $linkedUrl, startDate: $startDate)'; } 
 }
