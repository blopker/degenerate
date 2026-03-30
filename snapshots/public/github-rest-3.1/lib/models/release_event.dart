// GENERATED CODE - DO NOT MODIFY BY HAND

import 'release_event_release.dart';final class ReleaseEvent {const ReleaseEvent({required this.action, required this.release, });

factory ReleaseEvent.fromJson(Map<String, dynamic> json) { return ReleaseEvent(
  action: json['action'] as String,
  release: ReleaseEventRelease.fromJson(json['release'] as Map<String, dynamic>),
); }

final String action;

final ReleaseEventRelease release;

Map<String, dynamic> toJson() { return {
  'action': action,
  'release': release.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') && json['action'] is String &&
      json.containsKey('release'); } 
ReleaseEvent copyWith({String? action, ReleaseEventRelease? release, }) { return ReleaseEvent(
  action: action ?? this.action,
  release: release ?? this.release,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReleaseEvent &&
          action == other.action &&
          release == other.release; } 
@override int get hashCode { return Object.hash(action, release); } 
@override String toString() { return 'ReleaseEvent(action: $action, release: $release)'; } 
 }
