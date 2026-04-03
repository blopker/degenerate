// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_risk_level.dart';@immutable final class DlpUserRiskInfo {const DlpUserRiskInfo({required this.email, required this.eventCount, required this.lastEvent, required this.maxRiskLevel, required this.name, required this.userId, });

factory DlpUserRiskInfo.fromJson(Map<String, dynamic> json) { return DlpUserRiskInfo(
  email: json['email'] as String,
  eventCount: (json['event_count'] as num).toInt(),
  lastEvent: DateTime.parse(json['last_event'] as String),
  maxRiskLevel: DlpRiskLevel.fromJson(json['max_risk_level'] as String),
  name: json['name'] as String,
  userId: json['user_id'] as String,
); }

final String email;

final int eventCount;

final DateTime lastEvent;

final DlpRiskLevel maxRiskLevel;

final String name;

final String userId;

Map<String, dynamic> toJson() { return {
  'email': email,
  'event_count': eventCount,
  'last_event': lastEvent.toIso8601String(),
  'max_risk_level': maxRiskLevel.toJson(),
  'name': name,
  'user_id': userId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String &&
      json.containsKey('event_count') && json['event_count'] is num &&
      json.containsKey('last_event') && json['last_event'] is String &&
      json.containsKey('max_risk_level') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('user_id') && json['user_id'] is String; } 
DlpUserRiskInfo copyWith({String? email, int? eventCount, DateTime? lastEvent, DlpRiskLevel? maxRiskLevel, String? name, String? userId, }) { return DlpUserRiskInfo(
  email: email ?? this.email,
  eventCount: eventCount ?? this.eventCount,
  lastEvent: lastEvent ?? this.lastEvent,
  maxRiskLevel: maxRiskLevel ?? this.maxRiskLevel,
  name: name ?? this.name,
  userId: userId ?? this.userId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpUserRiskInfo &&
          email == other.email &&
          eventCount == other.eventCount &&
          lastEvent == other.lastEvent &&
          maxRiskLevel == other.maxRiskLevel &&
          name == other.name &&
          userId == other.userId; } 
@override int get hashCode { return Object.hash(email, eventCount, lastEvent, maxRiskLevel, name, userId); } 
@override String toString() { return 'DlpUserRiskInfo(email: $email, eventCount: $eventCount, lastEvent: $lastEvent, maxRiskLevel: $maxRiskLevel, name: $name, userId: $userId)'; } 
 }
