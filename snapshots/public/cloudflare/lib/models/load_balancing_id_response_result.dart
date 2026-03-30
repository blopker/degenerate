// GENERATED CODE - DO NOT MODIFY BY HAND

import 'load_balancing_identifier.dart';final class LoadBalancingIdResponseResult {const LoadBalancingIdResponseResult({this.id});

factory LoadBalancingIdResponseResult.fromJson(Map<String, dynamic> json) { return LoadBalancingIdResponseResult(
  id: json['id'] != null ? LoadBalancingIdentifier.fromJson(json['id'] as String) : null,
); }

final LoadBalancingIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
LoadBalancingIdResponseResult copyWith({LoadBalancingIdentifier Function()? id}) { return LoadBalancingIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'LoadBalancingIdResponseResult(id: $id)'; } 
 }
