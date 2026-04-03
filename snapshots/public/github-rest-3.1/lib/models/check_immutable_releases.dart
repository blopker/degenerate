// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Check immutable releases
@immutable final class CheckImmutableReleases {const CheckImmutableReleases({required this.enabled, required this.enforcedByOwner, });

factory CheckImmutableReleases.fromJson(Map<String, dynamic> json) { return CheckImmutableReleases(
  enabled: json['enabled'] as bool,
  enforcedByOwner: json['enforced_by_owner'] as bool,
); }

/// Whether immutable releases are enabled for the repository.
final bool enabled;

/// Whether immutable releases are enforced by the repository owner.
final bool enforcedByOwner;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'enforced_by_owner': enforcedByOwner,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('enforced_by_owner') && json['enforced_by_owner'] is bool; } 
CheckImmutableReleases copyWith({bool? enabled, bool? enforcedByOwner, }) { return CheckImmutableReleases(
  enabled: enabled ?? this.enabled,
  enforcedByOwner: enforcedByOwner ?? this.enforcedByOwner,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckImmutableReleases &&
          enabled == other.enabled &&
          enforcedByOwner == other.enforcedByOwner; } 
@override int get hashCode { return Object.hash(enabled, enforcedByOwner); } 
@override String toString() { return 'CheckImmutableReleases(enabled: $enabled, enforcedByOwner: $enforcedByOwner)'; } 
 }
