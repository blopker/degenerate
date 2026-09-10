// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UpdateServersRequest {const UpdateServersRequest({this.authCredentials, this.description = const Omittable.absent(), this.name, });

factory UpdateServersRequest.fromJson(Map<String, dynamic> json) { return UpdateServersRequest(
  authCredentials: json['auth_credentials'] as String?,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  name: json['name'] as String?,
); }

final String? authCredentials;

final Omittable<String?> description;

final String? name;

Map<String, dynamic> toJson() { return {
  'auth_credentials': ?authCredentials,
  if (description.isPresent) 'description': description.value,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'auth_credentials', 'description', 'name'}.contains(key)); } 
UpdateServersRequest copyWith({String? Function()? authCredentials, Omittable<String?>? description, String? Function()? name, }) { return UpdateServersRequest(
  authCredentials: authCredentials != null ? authCredentials() : this.authCredentials,
  description: description ?? this.description,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateServersRequest &&
          authCredentials == other.authCredentials &&
          description == other.description &&
          name == other.name; } 
@override int get hashCode { return Object.hash(authCredentials, description, name); } 
@override String toString() { return 'UpdateServersRequest(authCredentials: $authCredentials, description: $description, name: $name)'; } 
 }
