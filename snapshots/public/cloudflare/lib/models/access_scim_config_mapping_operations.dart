// GENERATED CODE - DO NOT MODIFY BY HAND

/// Whether or not this mapping applies to creates, updates, or deletes.
final class AccessScimConfigMappingOperations {const AccessScimConfigMappingOperations({this.create, this.delete, this.update, });

factory AccessScimConfigMappingOperations.fromJson(Map<String, dynamic> json) { return AccessScimConfigMappingOperations(
  create: json['create'] as bool?,
  delete: json['delete'] as bool?,
  update: json['update'] as bool?,
); }

/// Whether or not this mapping applies to create (POST) operations.
final bool? create;

/// Whether or not this mapping applies to DELETE operations.
final bool? delete;

/// Whether or not this mapping applies to update (PATCH/PUT) operations.
final bool? update;

Map<String, dynamic> toJson() { return {
  'create': ?create,
  'delete': ?delete,
  'update': ?update,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'create', 'delete', 'update'}.contains(key)); } 
AccessScimConfigMappingOperations copyWith({bool Function()? create, bool Function()? delete, bool Function()? update, }) { return AccessScimConfigMappingOperations(
  create: create != null ? create() : this.create,
  delete: delete != null ? delete() : this.delete,
  update: update != null ? update() : this.update,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessScimConfigMappingOperations &&
          create == other.create &&
          delete == other.delete &&
          update == other.update; } 
@override int get hashCode { return Object.hash(create, delete, update); } 
@override String toString() { return 'AccessScimConfigMappingOperations(create: $create, delete: $delete, update: $update)'; } 
 }
