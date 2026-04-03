// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_uuid.dart';@immutable final class MconnAdminCohort {const MconnAdminCohort({required this.id, required this.name, this.desiredVersion, });

factory MconnAdminCohort.fromJson(Map<String, dynamic> json) { return MconnAdminCohort(
  desiredVersion: json['desired_version'] as String?,
  id: MconnUuid.fromJson(json['id'] as String),
  name: json['name'] as String,
); }

final String? desiredVersion;

final MconnUuid id;

final String name;

Map<String, dynamic> toJson() { return {
  'desired_version': ?desiredVersion,
  'id': id.toJson(),
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('name') && json['name'] is String; } 
MconnAdminCohort copyWith({String Function()? desiredVersion, MconnUuid? id, String? name, }) { return MconnAdminCohort(
  desiredVersion: desiredVersion != null ? desiredVersion() : this.desiredVersion,
  id: id ?? this.id,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminCohort &&
          desiredVersion == other.desiredVersion &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(desiredVersion, id, name); } 
@override String toString() { return 'MconnAdminCohort(desiredVersion: $desiredVersion, id: $id, name: $name)'; } 
 }
