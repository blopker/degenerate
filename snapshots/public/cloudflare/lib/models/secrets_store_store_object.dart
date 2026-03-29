// GENERATED CODE - DO NOT MODIFY BY HAND

import 'secrets_store_created.dart';import 'secrets_store_modified.dart';import 'secrets_store_store_identifier.dart';import 'secrets_store_store_name.dart';final class SecretsStoreStoreObject {const SecretsStoreStoreObject({required this.created, required this.id, required this.modified, required this.name, });

factory SecretsStoreStoreObject.fromJson(Map<String, dynamic> json) { return SecretsStoreStoreObject(
  created: SecretsStoreCreated.fromJson(json['created'] as String),
  id: SecretsStoreStoreIdentifier.fromJson(json['id'] as String),
  modified: SecretsStoreModified.fromJson(json['modified'] as String),
  name: SecretsStoreStoreName.fromJson(json['name'] as String),
); }

/// Whenthe secret was created.
final SecretsStoreCreated created;

/// Store Identifier
final SecretsStoreStoreIdentifier id;

/// When the secret was modified.
final SecretsStoreModified modified;

/// The name of the store
final SecretsStoreStoreName name;

Map<String, dynamic> toJson() { return {
  'created': created.toJson(),
  'id': id.toJson(),
  'modified': modified.toJson(),
  'name': name.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') &&
      json.containsKey('id') &&
      json.containsKey('modified') &&
      json.containsKey('name'); } 
SecretsStoreStoreObject copyWith({SecretsStoreCreated? created, SecretsStoreStoreIdentifier? id, SecretsStoreModified? modified, SecretsStoreStoreName? name, }) { return SecretsStoreStoreObject(
  created: created ?? this.created,
  id: id ?? this.id,
  modified: modified ?? this.modified,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretsStoreStoreObject &&
          created == other.created &&
          id == other.id &&
          modified == other.modified &&
          name == other.name; } 
@override int get hashCode { return Object.hash(created, id, modified, name); } 
@override String toString() { return 'SecretsStoreStoreObject(created: $created, id: $id, modified: $modified, name: $name)'; } 
 }
