// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TeamsDevicesTargetDexTest {const TeamsDevicesTargetDexTest({this.id, this.name, });

factory TeamsDevicesTargetDexTest.fromJson(Map<String, dynamic> json) { return TeamsDevicesTargetDexTest(
  id: json['id'] as String?,
  name: json['name'] as String?,
); }

/// The id of the DEX test targeting this policy.
final String? id;

/// The name of the DEX test targeting this policy.
final String? name;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
TeamsDevicesTargetDexTest copyWith({String Function()? id, String Function()? name, }) { return TeamsDevicesTargetDexTest(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesTargetDexTest &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'TeamsDevicesTargetDexTest(id: $id, name: $name)'; } 
 }
