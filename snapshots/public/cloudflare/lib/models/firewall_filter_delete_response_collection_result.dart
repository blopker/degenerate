// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_filters_components_schemas_id.dart';@immutable final class FirewallFilterDeleteResponseCollectionResult {const FirewallFilterDeleteResponseCollectionResult({this.id});

factory FirewallFilterDeleteResponseCollectionResult.fromJson(Map<String, dynamic> json) { return FirewallFilterDeleteResponseCollectionResult(
  id: json['id'] != null ? FirewallFiltersComponentsSchemasId.fromJson(json['id'] as String) : null,
); }

final FirewallFiltersComponentsSchemasId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
FirewallFilterDeleteResponseCollectionResult copyWith({FirewallFiltersComponentsSchemasId Function()? id}) { return FirewallFilterDeleteResponseCollectionResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallFilterDeleteResponseCollectionResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'FirewallFilterDeleteResponseCollectionResult(id: $id)'; } 
 }
