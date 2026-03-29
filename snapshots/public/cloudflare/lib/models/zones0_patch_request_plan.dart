// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_identifier.dart';/// (Deprecated) Please use the `/zones/{zone_id}/subscription` API
/// to update a zone's plan. Changing this value will create/cancel
/// associated subscriptions. To view available plans for this zone,
/// see Zone Plans.
/// 
final class Zones0PatchRequestPlan {const Zones0PatchRequestPlan({this.id});

factory Zones0PatchRequestPlan.fromJson(Map<String, dynamic> json) { return Zones0PatchRequestPlan(
  id: json['id'] != null ? ZonesIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier
final ZonesIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Zones0PatchRequestPlan copyWith({ZonesIdentifier Function()? id}) { return Zones0PatchRequestPlan(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Zones0PatchRequestPlan &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'Zones0PatchRequestPlan(id: $id)'; } 
 }
