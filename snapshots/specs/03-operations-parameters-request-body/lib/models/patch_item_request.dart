// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PatchItemRequest {const PatchItemRequest({this.name, this.photo, });

factory PatchItemRequest.fromJson(Map<String, dynamic> json) { return PatchItemRequest(
  name: json['name'] as String?,
  photo: json['photo'] as String?,
); }

final String? name;

final String? photo;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'photo': ?photo,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'photo'}.contains(key)); } 
PatchItemRequest copyWith({String Function()? name, String Function()? photo, }) { return PatchItemRequest(
  name: name != null ? name() : this.name,
  photo: photo != null ? photo() : this.photo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchItemRequest &&
          name == other.name &&
          photo == other.photo; } 
@override int get hashCode { return Object.hash(name, photo); } 
@override String toString() { return 'PatchItemRequest(name: $name, photo: $photo)'; } 
 }
