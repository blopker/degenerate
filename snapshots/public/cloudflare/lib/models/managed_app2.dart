// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_managed_app_id.dart';final class ManagedApp2 {const ManagedApp2({required this.managedAppId});

factory ManagedApp2.fromJson(Map<String, dynamic> json) { return ManagedApp2(
  managedAppId: MagicManagedAppId.fromJson(json['managed_app_id'] as String),
); }

final MagicManagedAppId managedAppId;

Map<String, dynamic> toJson() { return {
  'managed_app_id': managedAppId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('managed_app_id'); } 
ManagedApp2 copyWith({MagicManagedAppId? managedAppId}) { return ManagedApp2(
  managedAppId: managedAppId ?? this.managedAppId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ManagedApp2 &&
          managedAppId == other.managedAppId; } 
@override int get hashCode { return managedAppId.hashCode; } 
@override String toString() { return 'ManagedApp2(managedAppId: $managedAppId)'; } 
 }
