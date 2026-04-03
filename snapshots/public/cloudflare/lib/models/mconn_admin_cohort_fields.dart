// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MconnAdminCohortFields {const MconnAdminCohortFields({this.desiredVersion, this.name, });

factory MconnAdminCohortFields.fromJson(Map<String, dynamic> json) { return MconnAdminCohortFields(
  desiredVersion: json['desired_version'] as String?,
  name: json['name'] as String?,
); }

final String? desiredVersion;

final String? name;

Map<String, dynamic> toJson() { return {
  'desired_version': ?desiredVersion,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'desired_version', 'name'}.contains(key)); } 
MconnAdminCohortFields copyWith({String Function()? desiredVersion, String Function()? name, }) { return MconnAdminCohortFields(
  desiredVersion: desiredVersion != null ? desiredVersion() : this.desiredVersion,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminCohortFields &&
          desiredVersion == other.desiredVersion &&
          name == other.name; } 
@override int get hashCode { return Object.hash(desiredVersion, name); } 
@override String toString() { return 'MconnAdminCohortFields(desiredVersion: $desiredVersion, name: $name)'; } 
 }
