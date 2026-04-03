// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_risk_level.dart';@immutable final class DlpRiskEvent {const DlpRiskEvent({required this.id, required this.name, required this.riskLevel, required this.timestamp, this.eventDetails, });

factory DlpRiskEvent.fromJson(Map<String, dynamic> json) { return DlpRiskEvent(
  eventDetails: json['event_details'],
  id: json['id'] as String,
  name: json['name'] as String,
  riskLevel: DlpRiskLevel.fromJson(json['risk_level'] as String),
  timestamp: DateTime.parse(json['timestamp'] as String),
); }

final dynamic eventDetails;

final String id;

final String name;

final DlpRiskLevel riskLevel;

final DateTime timestamp;

Map<String, dynamic> toJson() { return {
  'event_details': ?eventDetails,
  'id': id,
  'name': name,
  'risk_level': riskLevel.toJson(),
  'timestamp': timestamp.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('risk_level') &&
      json.containsKey('timestamp') && json['timestamp'] is String; } 
DlpRiskEvent copyWith({dynamic Function()? eventDetails, String? id, String? name, DlpRiskLevel? riskLevel, DateTime? timestamp, }) { return DlpRiskEvent(
  eventDetails: eventDetails != null ? eventDetails() : this.eventDetails,
  id: id ?? this.id,
  name: name ?? this.name,
  riskLevel: riskLevel ?? this.riskLevel,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpRiskEvent &&
          eventDetails == other.eventDetails &&
          id == other.id &&
          name == other.name &&
          riskLevel == other.riskLevel &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(eventDetails, id, name, riskLevel, timestamp); } 
@override String toString() { return 'DlpRiskEvent(eventDetails: $eventDetails, id: $id, name: $name, riskLevel: $riskLevel, timestamp: $timestamp)'; } 
 }
