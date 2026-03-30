// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zone_activation_identifier.dart';final class PutZonesZoneIdActivationCheckResponseResult {const PutZonesZoneIdActivationCheckResponseResult({this.id});

factory PutZonesZoneIdActivationCheckResponseResult.fromJson(Map<String, dynamic> json) { return PutZonesZoneIdActivationCheckResponseResult(
  id: json['id'] != null ? ZoneActivationIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier.
final ZoneActivationIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
PutZonesZoneIdActivationCheckResponseResult copyWith({ZoneActivationIdentifier Function()? id}) { return PutZonesZoneIdActivationCheckResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PutZonesZoneIdActivationCheckResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'PutZonesZoneIdActivationCheckResponseResult(id: $id)'; } 
 }
