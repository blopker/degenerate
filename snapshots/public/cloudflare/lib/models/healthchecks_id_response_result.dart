// GENERATED CODE - DO NOT MODIFY BY HAND

import 'healthchecks_identifier.dart';final class HealthchecksIdResponseResult {const HealthchecksIdResponseResult({this.id});

factory HealthchecksIdResponseResult.fromJson(Map<String, dynamic> json) { return HealthchecksIdResponseResult(
  id: json['id'] != null ? HealthchecksIdentifier.fromJson(json['id'] as String) : null,
); }

final HealthchecksIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
HealthchecksIdResponseResult copyWith({HealthchecksIdentifier Function()? id}) { return HealthchecksIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HealthchecksIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'HealthchecksIdResponseResult(id: $id)'; } 
 }
