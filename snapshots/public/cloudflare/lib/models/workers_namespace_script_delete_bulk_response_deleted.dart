// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_uuid.dart';final class WorkersNamespaceScriptDeleteBulkResponseDeleted {const WorkersNamespaceScriptDeleteBulkResponseDeleted({this.id});

factory WorkersNamespaceScriptDeleteBulkResponseDeleted.fromJson(Map<String, dynamic> json) { return WorkersNamespaceScriptDeleteBulkResponseDeleted(
  id: json['id'] != null ? WorkersUuid.fromJson(json['id'] as String) : null,
); }

final WorkersUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
WorkersNamespaceScriptDeleteBulkResponseDeleted copyWith({WorkersUuid Function()? id}) { return WorkersNamespaceScriptDeleteBulkResponseDeleted(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersNamespaceScriptDeleteBulkResponseDeleted &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WorkersNamespaceScriptDeleteBulkResponseDeleted(id: $id)'; } 
 }
