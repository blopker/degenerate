// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_identifier.dart';final class WorkerRoutesDeleteRouteResponseResult {const WorkerRoutesDeleteRouteResponseResult({this.id});

factory WorkerRoutesDeleteRouteResponseResult.fromJson(Map<String, dynamic> json) { return WorkerRoutesDeleteRouteResponseResult(
  id: json['id'] != null ? WorkersIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier.
final WorkersIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
WorkerRoutesDeleteRouteResponseResult copyWith({WorkersIdentifier Function()? id}) { return WorkerRoutesDeleteRouteResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerRoutesDeleteRouteResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WorkerRoutesDeleteRouteResponseResult(id: $id)'; } 
 }
