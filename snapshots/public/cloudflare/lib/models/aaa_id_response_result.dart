// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_uuid.dart';@immutable final class AaaIdResponseResult {const AaaIdResponseResult({this.id});

factory AaaIdResponseResult.fromJson(Map<String, dynamic> json) { return AaaIdResponseResult(
  id: json['id'] != null ? AaaUuid.fromJson(json['id'] as String) : null,
); }

final AaaUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AaaIdResponseResult copyWith({AaaUuid Function()? id}) { return AaaIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AaaIdResponseResult(id: $id)'; } 
 }
