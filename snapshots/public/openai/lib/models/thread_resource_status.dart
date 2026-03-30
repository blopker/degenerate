// GENERATED CODE - DO NOT MODIFY BY HAND

import 'active_status.dart';import 'closed_status.dart';import 'locked_status.dart';/// Current status for the thread. Defaults to `active` for newly created threads.
sealed class ThreadResourceStatus {const ThreadResourceStatus();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ThreadResourceStatus.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'active' => ThreadResourceStatusActive.fromJson(json),
  'locked' => ThreadResourceStatusLocked.fromJson(json),
  'closed' => ThreadResourceStatusClosed.fromJson(json),
  _ => ThreadResourceStatus$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ThreadResourceStatus$Unknown; } 
 }
final class ThreadResourceStatusActive extends ThreadResourceStatus {const ThreadResourceStatusActive(this.activeStatus);

factory ThreadResourceStatusActive.fromJson(Map<String, dynamic> json) { return ThreadResourceStatusActive(ActiveStatus.fromJson(json)); }

final ActiveStatus activeStatus;

@override String get type { return 'active'; } 
@override Map<String, dynamic> toJson() { return {...activeStatus.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadResourceStatusActive && activeStatus == other.activeStatus; } 
@override int get hashCode { return activeStatus.hashCode; } 
@override String toString() { return 'ThreadResourceStatusActive(activeStatus: $activeStatus)'; } 
 }
final class ThreadResourceStatusLocked extends ThreadResourceStatus {const ThreadResourceStatusLocked(this.lockedStatus);

factory ThreadResourceStatusLocked.fromJson(Map<String, dynamic> json) { return ThreadResourceStatusLocked(LockedStatus.fromJson(json)); }

final LockedStatus lockedStatus;

@override String get type { return 'locked'; } 
@override Map<String, dynamic> toJson() { return {...lockedStatus.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadResourceStatusLocked && lockedStatus == other.lockedStatus; } 
@override int get hashCode { return lockedStatus.hashCode; } 
@override String toString() { return 'ThreadResourceStatusLocked(lockedStatus: $lockedStatus)'; } 
 }
final class ThreadResourceStatusClosed extends ThreadResourceStatus {const ThreadResourceStatusClosed(this.closedStatus);

factory ThreadResourceStatusClosed.fromJson(Map<String, dynamic> json) { return ThreadResourceStatusClosed(ClosedStatus.fromJson(json)); }

final ClosedStatus closedStatus;

@override String get type { return 'closed'; } 
@override Map<String, dynamic> toJson() { return {...closedStatus.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadResourceStatusClosed && closedStatus == other.closedStatus; } 
@override int get hashCode { return closedStatus.hashCode; } 
@override String toString() { return 'ThreadResourceStatusClosed(closedStatus: $closedStatus)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ThreadResourceStatus$Unknown extends ThreadResourceStatus {const ThreadResourceStatus$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadResourceStatus$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ThreadResourceStatus.unknown($json)'; } 
 }
