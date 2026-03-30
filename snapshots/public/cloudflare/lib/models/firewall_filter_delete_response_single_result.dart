// GENERATED CODE - DO NOT MODIFY BY HAND

import 'firewall_filters_components_schemas_id.dart';final class FirewallFilterDeleteResponseSingleResult {const FirewallFilterDeleteResponseSingleResult({required this.id});

factory FirewallFilterDeleteResponseSingleResult.fromJson(Map<String, dynamic> json) { return FirewallFilterDeleteResponseSingleResult(
  id: FirewallFiltersComponentsSchemasId.fromJson(json['id'] as String),
); }

final FirewallFiltersComponentsSchemasId id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
FirewallFilterDeleteResponseSingleResult copyWith({FirewallFiltersComponentsSchemasId? id}) { return FirewallFilterDeleteResponseSingleResult(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilterDeleteResponseSingleResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'FirewallFilterDeleteResponseSingleResult(id: $id)'; } 
 }
