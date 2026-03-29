// GENERATED CODE - DO NOT MODIFY BY HAND

/// Data source for annotations.
final class RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource {const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._(this.value);

factory RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(String json) { return switch (json) {
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
  _ => RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._(json),
}; }

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource all = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('ALL');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource aiBots = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_BOTS');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource aiGateway = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_GATEWAY');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource bgp = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('BGP');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource bots = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('BOTS');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource connectionAnomaly = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('CONNECTION_ANOMALY');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource ct = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('CT');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dns = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dnsMagnitude = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_MAGNITUDE');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dnsAs112 = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_AS112');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dos = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DOS');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource emailRouting = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_ROUTING');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource emailSecurity = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_SECURITY');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource fw = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource fwPg = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW_PG');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource http = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource httpControl = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CONTROL');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource httpCrawlerReferer = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CRAWLER_REFERER');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource httpOrigins = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_ORIGINS');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource iqi = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('IQI');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource leakedCredentials = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('LEAKED_CREDENTIALS');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource net = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('NET');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource robotsTxt = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('ROBOTS_TXT');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource speed = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('SPEED');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource workersAi = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('WORKERS_AI');

static const List<RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource> values = [all, aiBots, aiGateway, bgp, bots, connectionAnomaly, ct, dns, dnsMagnitude, dnsAs112, dos, emailRouting, emailSecurity, fw, fwPg, http, httpControl, httpCrawlerReferer, httpOrigins, iqi, leakedCredentials, net, robotsTxt, speed, workersAi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource($value)'; } 
 }
/// Event type for annotations.
final class RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType {const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._(this.value);

factory RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._(json),
}; }

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType event = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('EVENT');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType general = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('GENERAL');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType outage = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('OUTAGE');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType partialProjection = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType pipeline = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('PIPELINE');

static const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType trafficAnomaly = RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType($value)'; } 
 }
/// Annotation associated with the result (e.g. outage or other type of event).
final class RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotations {const RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotations({required this.dataSource, required this.description, required this.endDate, required this.eventType, required this.isInstantaneous, required this.linkedUrl, required this.startDate, });

factory RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotations(
  dataSource: RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(json['dataSource'] as String),
  description: json['description'] as String,
  endDate: DateTime.parse(json['endDate'] as String),
  eventType: RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(json['eventType'] as String),
  isInstantaneous: json['isInstantaneous'] as bool,
  linkedUrl: Uri.parse(json['linkedUrl'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
); }

/// Data source for annotations.
final RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dataSource;

final String description;

final DateTime endDate;

/// Event type for annotations.
final RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType eventType;

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
RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotations copyWith({RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource? dataSource, String? description, DateTime? endDate, RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType? eventType, bool? isInstantaneous, Uri? linkedUrl, DateTime? startDate, }) { return RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotations(
  dataSource: dataSource ?? this.dataSource,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  eventType: eventType ?? this.eventType,
  isInstantaneous: isInstantaneous ?? this.isInstantaneous,
  linkedUrl: linkedUrl ?? this.linkedUrl,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotations &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          isInstantaneous == other.isInstantaneous &&
          linkedUrl == other.linkedUrl &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(dataSource, description, endDate, eventType, isInstantaneous, linkedUrl, startDate); } 
@override String toString() { return 'RadarGetBotsSummaryResponseResultMetaConfidenceInfoAnnotations(dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, isInstantaneous: $isInstantaneous, linkedUrl: $linkedUrl, startDate: $startDate)'; } 
 }
