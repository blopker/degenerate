// GENERATED CODE - DO NOT MODIFY BY HAND

/// Data source for annotations.
final class RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource {const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._(this.value);

factory RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(String json) { return switch (json) {
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
  _ => RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._(json),
}; }

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource all = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('ALL');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource aiBots = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_BOTS');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource aiGateway = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_GATEWAY');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource bgp = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('BGP');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource bots = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('BOTS');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource connectionAnomaly = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('CONNECTION_ANOMALY');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource ct = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('CT');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource dns = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource dnsMagnitude = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_MAGNITUDE');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource dnsAs112 = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_AS112');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource dos = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('DOS');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource emailRouting = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_ROUTING');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource emailSecurity = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_SECURITY');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource fw = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource fwPg = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW_PG');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource http = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource httpControl = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CONTROL');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource httpCrawlerReferer = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CRAWLER_REFERER');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource httpOrigins = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_ORIGINS');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource iqi = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('IQI');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource leakedCredentials = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('LEAKED_CREDENTIALS');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource net = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('NET');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource robotsTxt = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('ROBOTS_TXT');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource speed = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('SPEED');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource workersAi = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource._('WORKERS_AI');

static const List<RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource> values = [all, aiBots, aiGateway, bgp, bots, connectionAnomaly, ct, dns, dnsMagnitude, dnsAs112, dos, emailRouting, emailSecurity, fw, fwPg, http, httpControl, httpCrawlerReferer, httpOrigins, iqi, leakedCredentials, net, robotsTxt, speed, workersAi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource($value)'; } 
 }
/// Event type for annotations.
final class RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType {const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType._(this.value);

factory RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType._(json),
}; }

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType event = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType._('EVENT');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType general = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType._('GENERAL');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType outage = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType._('OUTAGE');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType partialProjection = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType pipeline = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType._('PIPELINE');

static const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType trafficAnomaly = RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType($value)'; } 
 }
/// Annotation associated with the result (e.g. outage or other type of event).
final class RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotations {const RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotations({required this.dataSource, required this.description, required this.endDate, required this.eventType, required this.isInstantaneous, required this.linkedUrl, required this.startDate, });

factory RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotations(
  dataSource: RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(json['dataSource'] as String),
  description: json['description'] as String,
  endDate: DateTime.parse(json['endDate'] as String),
  eventType: RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(json['eventType'] as String),
  isInstantaneous: json['isInstantaneous'] as bool,
  linkedUrl: Uri.parse(json['linkedUrl'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
); }

/// Data source for annotations.
final RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource dataSource;

final String description;

final DateTime endDate;

/// Event type for annotations.
final RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType eventType;

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
RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotations copyWith({RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsDataSource? dataSource, String? description, DateTime? endDate, RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotationsEventType? eventType, bool? isInstantaneous, Uri? linkedUrl, DateTime? startDate, }) { return RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotations(
  dataSource: dataSource ?? this.dataSource,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  eventType: eventType ?? this.eventType,
  isInstantaneous: isInstantaneous ?? this.isInstantaneous,
  linkedUrl: linkedUrl ?? this.linkedUrl,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotations &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          isInstantaneous == other.isInstantaneous &&
          linkedUrl == other.linkedUrl &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(dataSource, description, endDate, eventType, isInstantaneous, linkedUrl, startDate); } 
@override String toString() { return 'RadarGetRankingTopDomainsResponseResultMetaConfidenceInfoAnnotations(dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, isInstantaneous: $isInstantaneous, linkedUrl: $linkedUrl, startDate: $startDate)'; } 
 }
