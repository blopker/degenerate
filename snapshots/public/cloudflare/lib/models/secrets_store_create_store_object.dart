// GENERATED CODE - DO NOT MODIFY BY HAND

import 'secrets_store_store_name.dart';final class SecretsStoreCreateStoreObject {const SecretsStoreCreateStoreObject({required this.name});

factory SecretsStoreCreateStoreObject.fromJson(Map<String, dynamic> json) { return SecretsStoreCreateStoreObject(
  name: SecretsStoreStoreName.fromJson(json['name'] as String),
); }

final SecretsStoreStoreName name;

Map<String, dynamic> toJson() { return {
  'name': name.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name'); } 
SecretsStoreCreateStoreObject copyWith({SecretsStoreStoreName? name}) { return SecretsStoreCreateStoreObject(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStoreCreateStoreObject &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'SecretsStoreCreateStoreObject(name: $name)'; } 
 }
