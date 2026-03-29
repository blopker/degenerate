// GENERATED CODE - DO NOT MODIFY BY HAND

/// Data source for annotations.
final class RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource {const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._(this.value);

factory RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(String json) { return switch (json) {
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
  _ => RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._(json),
}; }

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource all = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('ALL');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource aiBots = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_BOTS');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource aiGateway = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_GATEWAY');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource bgp = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('BGP');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource bots = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('BOTS');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource connectionAnomaly = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('CONNECTION_ANOMALY');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource ct = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('CT');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dns = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dnsMagnitude = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_MAGNITUDE');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dnsAs112 = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_AS112');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dos = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('DOS');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource emailRouting = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_ROUTING');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource emailSecurity = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_SECURITY');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource fw = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource fwPg = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW_PG');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource http = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource httpControl = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CONTROL');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource httpCrawlerReferer = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CRAWLER_REFERER');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource httpOrigins = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_ORIGINS');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource iqi = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('IQI');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource leakedCredentials = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('LEAKED_CREDENTIALS');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource net = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('NET');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource robotsTxt = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('ROBOTS_TXT');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource speed = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('SPEED');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource workersAi = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource._('WORKERS_AI');

static const List<RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource> values = [all, aiBots, aiGateway, bgp, bots, connectionAnomaly, ct, dns, dnsMagnitude, dnsAs112, dos, emailRouting, emailSecurity, fw, fwPg, http, httpControl, httpCrawlerReferer, httpOrigins, iqi, leakedCredentials, net, robotsTxt, speed, workersAi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource($value)'; } 
 }
/// Event type for annotations.
final class RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType {const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._(this.value);

factory RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._(json),
}; }

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType event = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('EVENT');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType general = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('GENERAL');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType outage = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('OUTAGE');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType partialProjection = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType pipeline = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('PIPELINE');

static const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType trafficAnomaly = RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType($value)'; } 
 }
/// Annotation associated with the result (e.g. outage or other type of event).
final class RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotations {const RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotations({required this.dataSource, required this.description, required this.endDate, required this.eventType, required this.isInstantaneous, required this.linkedUrl, required this.startDate, });

factory RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotations(
  dataSource: RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(json['dataSource'] as String),
  description: json['description'] as String,
  endDate: DateTime.parse(json['endDate'] as String),
  eventType: RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(json['eventType'] as String),
  isInstantaneous: json['isInstantaneous'] as bool,
  linkedUrl: Uri.parse(json['linkedUrl'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
); }

/// Data source for annotations.
final RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource dataSource;

final String description;

final DateTime endDate;

/// Event type for annotations.
final RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType eventType;

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
RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotations copyWith({RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsDataSource? dataSource, String? description, DateTime? endDate, RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotationsEventType? eventType, bool? isInstantaneous, Uri? linkedUrl, DateTime? startDate, }) { return RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotations(
  dataSource: dataSource ?? this.dataSource,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  eventType: eventType ?? this.eventType,
  isInstantaneous: isInstantaneous ?? this.isInstantaneous,
  linkedUrl: linkedUrl ?? this.linkedUrl,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotations &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          isInstantaneous == other.isInstantaneous &&
          linkedUrl == other.linkedUrl &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(dataSource, description, endDate, eventType, isInstantaneous, linkedUrl, startDate); } 
@override String toString() { return 'RadarGetOriginsSummaryResponseResultMetaConfidenceInfoAnnotations(dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, isInstantaneous: $isInstantaneous, linkedUrl: $linkedUrl, startDate: $startDate)'; } 
 }
