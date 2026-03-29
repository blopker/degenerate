// GENERATED CODE - DO NOT MODIFY BY HAND

/// Data source for annotations.
final class RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource {const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._(this.value);

factory RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(String json) { return switch (json) {
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
  _ => RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._(json),
}; }

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource all = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('ALL');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource aiBots = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_BOTS');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource aiGateway = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('AI_GATEWAY');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource bgp = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('BGP');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource bots = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('BOTS');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource connectionAnomaly = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('CONNECTION_ANOMALY');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource ct = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('CT');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource dns = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource dnsMagnitude = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_MAGNITUDE');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource dnsAs112 = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DNS_AS112');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource dos = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('DOS');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource emailRouting = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_ROUTING');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource emailSecurity = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('EMAIL_SECURITY');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource fw = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource fwPg = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('FW_PG');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource http = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource httpControl = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CONTROL');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource httpCrawlerReferer = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_CRAWLER_REFERER');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource httpOrigins = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('HTTP_ORIGINS');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource iqi = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('IQI');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource leakedCredentials = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('LEAKED_CREDENTIALS');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource net = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('NET');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource robotsTxt = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('ROBOTS_TXT');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource speed = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('SPEED');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource workersAi = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource._('WORKERS_AI');

static const List<RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource> values = [all, aiBots, aiGateway, bgp, bots, connectionAnomaly, ct, dns, dnsMagnitude, dnsAs112, dos, emailRouting, emailSecurity, fw, fwPg, http, httpControl, httpCrawlerReferer, httpOrigins, iqi, leakedCredentials, net, robotsTxt, speed, workersAi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource($value)'; } 
 }
/// Event type for annotations.
final class RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType {const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType._(this.value);

factory RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(String json) { return switch (json) {
  'EVENT' => event,
  'GENERAL' => general,
  'OUTAGE' => outage,
  'PARTIAL_PROJECTION' => partialProjection,
  'PIPELINE' => pipeline,
  'TRAFFIC_ANOMALY' => trafficAnomaly,
  _ => RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType._(json),
}; }

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType event = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType._('EVENT');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType general = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType._('GENERAL');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType outage = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType._('OUTAGE');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType partialProjection = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType._('PARTIAL_PROJECTION');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType pipeline = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType._('PIPELINE');

static const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType trafficAnomaly = RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType._('TRAFFIC_ANOMALY');

static const List<RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType> values = [event, general, outage, partialProjection, pipeline, trafficAnomaly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType($value)'; } 
 }
/// Annotation associated with the result (e.g. outage or other type of event).
final class RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotations {const RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotations({required this.dataSource, required this.description, required this.endDate, required this.eventType, required this.isInstantaneous, required this.linkedUrl, required this.startDate, });

factory RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotations(
  dataSource: RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource.fromJson(json['dataSource'] as String),
  description: json['description'] as String,
  endDate: DateTime.parse(json['endDate'] as String),
  eventType: RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType.fromJson(json['eventType'] as String),
  isInstantaneous: json['isInstantaneous'] as bool,
  linkedUrl: Uri.parse(json['linkedUrl'] as String),
  startDate: DateTime.parse(json['startDate'] as String),
); }

/// Data source for annotations.
final RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource dataSource;

final String description;

final DateTime endDate;

/// Event type for annotations.
final RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType eventType;

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
RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotations copyWith({RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsDataSource? dataSource, String? description, DateTime? endDate, RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotationsEventType? eventType, bool? isInstantaneous, Uri? linkedUrl, DateTime? startDate, }) { return RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotations(
  dataSource: dataSource ?? this.dataSource,
  description: description ?? this.description,
  endDate: endDate ?? this.endDate,
  eventType: eventType ?? this.eventType,
  isInstantaneous: isInstantaneous ?? this.isInstantaneous,
  linkedUrl: linkedUrl ?? this.linkedUrl,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotations &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          isInstantaneous == other.isInstantaneous &&
          linkedUrl == other.linkedUrl &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(dataSource, description, endDate, eventType, isInstantaneous, linkedUrl, startDate); } 
@override String toString() { return 'RadarGetDnsTopAsesResponseResultMetaConfidenceInfoAnnotations(dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, isInstantaneous: $isInstantaneous, linkedUrl: $linkedUrl, startDate: $startDate)'; } 
 }
