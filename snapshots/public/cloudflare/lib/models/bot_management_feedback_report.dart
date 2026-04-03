// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bot_management_metric_requests.dart';/// Type of feedback report.
@immutable final class BotManagementFeedbackType {const BotManagementFeedbackType._(this.value);

factory BotManagementFeedbackType.fromJson(String json) { return switch (json) {
  'false_positive' => falsePositive,
  'false_negative' => falseNegative,
  _ => BotManagementFeedbackType._(json),
}; }

static const BotManagementFeedbackType falsePositive = BotManagementFeedbackType._('false_positive');

static const BotManagementFeedbackType falseNegative = BotManagementFeedbackType._('false_negative');

static const List<BotManagementFeedbackType> values = [falsePositive, falseNegative];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BotManagementFeedbackType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BotManagementFeedbackType($value)'; } 
 }
@immutable final class BotManagementFeedbackReport {const BotManagementFeedbackReport({required this.description, required this.expression, required this.firstRequestSeenAt, required this.lastRequestSeenAt, required this.requests, required this.requestsByAttribute, required this.requestsByScore, required this.requestsByScoreSrc, required this.type, this.createdAt, this.subtype, });

factory BotManagementFeedbackReport.fromJson(Map<String, dynamic> json) { return BotManagementFeedbackReport(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  description: json['description'] as String,
  expression: json['expression'] as String,
  firstRequestSeenAt: DateTime.parse(json['first_request_seen_at'] as String),
  lastRequestSeenAt: DateTime.parse(json['last_request_seen_at'] as String),
  requests: (json['requests'] as num).toInt(),
  requestsByAttribute: (json['requests_by_attribute'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => BotManagementMetricRequests.fromJson(e as Map<String, dynamic>)).toList())),
  requestsByScore: (json['requests_by_score'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as num).toInt())),
  requestsByScoreSrc: (json['requests_by_score_src'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as num).toInt())),
  subtype: json['subtype'] as String?,
  type: BotManagementFeedbackType.fromJson(json['type'] as String),
); }

final DateTime? createdAt;

final String description;

/// Wirefilter expression describing the traffic being reported.
final String expression;

final DateTime firstRequestSeenAt;

final DateTime lastRequestSeenAt;

final int requests;

final Map<String,List<BotManagementMetricRequests>> requestsByAttribute;

final Map<String,int> requestsByScore;

final Map<String,int> requestsByScoreSrc;

final String? subtype;

final BotManagementFeedbackType type;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  'description': description,
  'expression': expression,
  'first_request_seen_at': firstRequestSeenAt.toIso8601String(),
  'last_request_seen_at': lastRequestSeenAt.toIso8601String(),
  'requests': requests,
  'requests_by_attribute': requestsByAttribute.map((k, v) => MapEntry(k, v.map((e) => e.toJson()).toList())),
  'requests_by_score': requestsByScore,
  'requests_by_score_src': requestsByScoreSrc,
  'subtype': ?subtype,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('expression') && json['expression'] is String &&
      json.containsKey('first_request_seen_at') && json['first_request_seen_at'] is String &&
      json.containsKey('last_request_seen_at') && json['last_request_seen_at'] is String &&
      json.containsKey('requests') && json['requests'] is num &&
      json.containsKey('requests_by_attribute') &&
      json.containsKey('requests_by_score') &&
      json.containsKey('requests_by_score_src') &&
      json.containsKey('type'); } 
BotManagementFeedbackReport copyWith({DateTime Function()? createdAt, String? description, String? expression, DateTime? firstRequestSeenAt, DateTime? lastRequestSeenAt, int? requests, Map<String,List<BotManagementMetricRequests>>? requestsByAttribute, Map<String,int>? requestsByScore, Map<String,int>? requestsByScoreSrc, String Function()? subtype, BotManagementFeedbackType? type, }) { return BotManagementFeedbackReport(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description ?? this.description,
  expression: expression ?? this.expression,
  firstRequestSeenAt: firstRequestSeenAt ?? this.firstRequestSeenAt,
  lastRequestSeenAt: lastRequestSeenAt ?? this.lastRequestSeenAt,
  requests: requests ?? this.requests,
  requestsByAttribute: requestsByAttribute ?? this.requestsByAttribute,
  requestsByScore: requestsByScore ?? this.requestsByScore,
  requestsByScoreSrc: requestsByScoreSrc ?? this.requestsByScoreSrc,
  subtype: subtype != null ? subtype() : this.subtype,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotManagementFeedbackReport &&
          createdAt == other.createdAt &&
          description == other.description &&
          expression == other.expression &&
          firstRequestSeenAt == other.firstRequestSeenAt &&
          lastRequestSeenAt == other.lastRequestSeenAt &&
          requests == other.requests &&
          requestsByAttribute == other.requestsByAttribute &&
          requestsByScore == other.requestsByScore &&
          requestsByScoreSrc == other.requestsByScoreSrc &&
          subtype == other.subtype &&
          type == other.type; } 
@override int get hashCode { return Object.hash(createdAt, description, expression, firstRequestSeenAt, lastRequestSeenAt, requests, requestsByAttribute, requestsByScore, requestsByScoreSrc, subtype, type); } 
@override String toString() { return 'BotManagementFeedbackReport(createdAt: $createdAt, description: $description, expression: $expression, firstRequestSeenAt: $firstRequestSeenAt, lastRequestSeenAt: $lastRequestSeenAt, requests: $requests, requestsByAttribute: $requestsByAttribute, requestsByScore: $requestsByScore, requestsByScoreSrc: $requestsByScoreSrc, subtype: $subtype, type: $type)'; } 
 }
