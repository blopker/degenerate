// GENERATED CODE - DO NOT MODIFY BY HAND

import 'load_balancing_schemas_identifier.dart';final class LoadBalancingSchemasIdResponseResult {const LoadBalancingSchemasIdResponseResult({this.id});

factory LoadBalancingSchemasIdResponseResult.fromJson(Map<String, dynamic> json) { return LoadBalancingSchemasIdResponseResult(
  id: json['id'] != null ? LoadBalancingSchemasIdentifier.fromJson(json['id'] as String) : null,
); }

final LoadBalancingSchemasIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
LoadBalancingSchemasIdResponseResult copyWith({LoadBalancingSchemasIdentifier Function()? id}) { return LoadBalancingSchemasIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingSchemasIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'LoadBalancingSchemasIdResponseResult(id: $id)'; } 
 }
