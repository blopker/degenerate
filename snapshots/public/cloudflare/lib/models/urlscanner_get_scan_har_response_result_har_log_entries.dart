// GENERATED CODE - DO NOT MODIFY BY HAND

import 'urlscanner_get_scan_har_response_result_har_log_entries_request.dart';import 'urlscanner_get_scan_har_response_result_har_log_entries_response.dart';final class UrlscannerGetScanHarResponseResultHarLogEntries {const UrlscannerGetScanHarResponseResultHarLogEntries({required this.initialPriority, required this.initiatorType, required this.priority, required this.requestId, required this.requestTime, required this.resourceType, required this.cache, required this.connection, required this.pageref, required this.request, required this.response, required this.serverIpAddress, required this.startedDateTime, required this.time, });

factory UrlscannerGetScanHarResponseResultHarLogEntries.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanHarResponseResultHarLogEntries(
  initialPriority: json['_initialPriority'] as String,
  initiatorType: json['_initiator_type'] as String,
  priority: json['_priority'] as String,
  requestId: json['_requestId'] as String,
  requestTime: (json['_requestTime'] as num).toDouble(),
  resourceType: json['_resourceType'] as String,
  cache: (json['cache'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  connection: json['connection'] as String,
  pageref: json['pageref'] as String,
  request: UrlscannerGetScanHarResponseResultHarLogEntriesRequest.fromJson(json['request'] as Map<String, dynamic>),
  response: UrlscannerGetScanHarResponseResultHarLogEntriesResponse.fromJson(json['response'] as Map<String, dynamic>),
  serverIpAddress: json['serverIPAddress'] as String,
  startedDateTime: json['startedDateTime'] as String,
  time: (json['time'] as num).toDouble(),
); }

final String initialPriority;

final String initiatorType;

final String priority;

final String requestId;

final double requestTime;

final String resourceType;

final Map<String,dynamic> cache;

final String connection;

final String pageref;

final UrlscannerGetScanHarResponseResultHarLogEntriesRequest request;

final UrlscannerGetScanHarResponseResultHarLogEntriesResponse response;

final String serverIpAddress;

final String startedDateTime;

final double time;

Map<String, dynamic> toJson() { return {
  '_initialPriority': initialPriority,
  '_initiator_type': initiatorType,
  '_priority': priority,
  '_requestId': requestId,
  '_requestTime': requestTime,
  '_resourceType': resourceType,
  'cache': cache,
  'connection': connection,
  'pageref': pageref,
  'request': request.toJson(),
  'response': response.toJson(),
  'serverIPAddress': serverIpAddress,
  'startedDateTime': startedDateTime,
  'time': time,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('_initialPriority') && json['_initialPriority'] is String &&
      json.containsKey('_initiator_type') && json['_initiator_type'] is String &&
      json.containsKey('_priority') && json['_priority'] is String &&
      json.containsKey('_requestId') && json['_requestId'] is String &&
      json.containsKey('_requestTime') && json['_requestTime'] is num &&
      json.containsKey('_resourceType') && json['_resourceType'] is String &&
      json.containsKey('cache') &&
      json.containsKey('connection') && json['connection'] is String &&
      json.containsKey('pageref') && json['pageref'] is String &&
      json.containsKey('request') &&
      json.containsKey('response') &&
      json.containsKey('serverIPAddress') && json['serverIPAddress'] is String &&
      json.containsKey('startedDateTime') && json['startedDateTime'] is String &&
      json.containsKey('time') && json['time'] is num; } 
UrlscannerGetScanHarResponseResultHarLogEntries copyWith({String? initialPriority, String? initiatorType, String? priority, String? requestId, double? requestTime, String? resourceType, Map<String,dynamic>? cache, String? connection, String? pageref, UrlscannerGetScanHarResponseResultHarLogEntriesRequest? request, UrlscannerGetScanHarResponseResultHarLogEntriesResponse? response, String? serverIpAddress, String? startedDateTime, double? time, }) { return UrlscannerGetScanHarResponseResultHarLogEntries(
  initialPriority: initialPriority ?? this.initialPriority,
  initiatorType: initiatorType ?? this.initiatorType,
  priority: priority ?? this.priority,
  requestId: requestId ?? this.requestId,
  requestTime: requestTime ?? this.requestTime,
  resourceType: resourceType ?? this.resourceType,
  cache: cache ?? this.cache,
  connection: connection ?? this.connection,
  pageref: pageref ?? this.pageref,
  request: request ?? this.request,
  response: response ?? this.response,
  serverIpAddress: serverIpAddress ?? this.serverIpAddress,
  startedDateTime: startedDateTime ?? this.startedDateTime,
  time: time ?? this.time,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanHarResponseResultHarLogEntries &&
          initialPriority == other.initialPriority &&
          initiatorType == other.initiatorType &&
          priority == other.priority &&
          requestId == other.requestId &&
          requestTime == other.requestTime &&
          resourceType == other.resourceType &&
          cache == other.cache &&
          connection == other.connection &&
          pageref == other.pageref &&
          request == other.request &&
          response == other.response &&
          serverIpAddress == other.serverIpAddress &&
          startedDateTime == other.startedDateTime &&
          time == other.time; } 
@override int get hashCode { return Object.hash(initialPriority, initiatorType, priority, requestId, requestTime, resourceType, cache, connection, pageref, request, response, serverIpAddress, startedDateTime, time); } 
@override String toString() { return 'UrlscannerGetScanHarResponseResultHarLogEntries(initialPriority: $initialPriority, initiatorType: $initiatorType, priority: $priority, requestId: $requestId, requestTime: $requestTime, resourceType: $resourceType, cache: $cache, connection: $connection, pageref: $pageref, request: $request, response: $response, serverIpAddress: $serverIpAddress, startedDateTime: $startedDateTime, time: $time)'; } 
 }
