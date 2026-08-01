// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_risk_event.dart';import 'dlp_risk_level.dart';@immutable final class DlpRiskEvents {const DlpRiskEvents({required this.email, required this.events, required this.name, this.lastResetTime = const Omittable.absent(), this.riskLevel, });

factory DlpRiskEvents.fromJson(Map<String, dynamic> json) { return DlpRiskEvents(
  email: json['email'] as String,
  events: (json['events'] as List<dynamic>).map((e) => DlpRiskEvent.fromJson(e as Map<String, dynamic>)).toList(),
  lastResetTime: json.containsKey('last_reset_time') ? Omittable(json['last_reset_time'] != null ? DateTime.parse(json['last_reset_time'] as String) : null) : const Omittable.absent(),
  name: json['name'] as String,
  riskLevel: json['risk_level'] != null ? DlpRiskLevel.fromJson(json['risk_level'] as String) : null,
); }

final String email;

final List<DlpRiskEvent> events;

final Omittable<DateTime?> lastResetTime;

final String name;

final DlpRiskLevel? riskLevel;

Map<String, dynamic> toJson() { return {
  'email': email,
  'events': events.map((e) => e.toJson()).toList(),
  if (lastResetTime.isPresent) 'last_reset_time': lastResetTime.value?.toIso8601String(),
  'name': name,
  if (riskLevel != null) 'risk_level': riskLevel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String &&
      json.containsKey('events') &&
      json.containsKey('name') && json['name'] is String; } 
DlpRiskEvents copyWith({String? email, List<DlpRiskEvent>? events, Omittable<DateTime?>? lastResetTime, String? name, DlpRiskLevel? Function()? riskLevel, }) { return DlpRiskEvents(
  email: email ?? this.email,
  events: events ?? this.events,
  lastResetTime: lastResetTime ?? this.lastResetTime,
  name: name ?? this.name,
  riskLevel: riskLevel != null ? riskLevel() : this.riskLevel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpRiskEvents &&
          email == other.email &&
          listEquals(events, other.events) &&
          lastResetTime == other.lastResetTime &&
          name == other.name &&
          riskLevel == other.riskLevel; } 
@override int get hashCode { return Object.hash(email, Object.hashAll(events), lastResetTime, name, riskLevel); } 
@override String toString() { return 'DlpRiskEvents(email: $email, events: $events, lastResetTime: $lastResetTime, name: $name, riskLevel: $riskLevel)'; } 
 }
