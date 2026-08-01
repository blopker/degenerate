// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PatchItemRequest2 {const PatchItemRequest2({this.name, this.avatar = const Omittable.absent(), });

factory PatchItemRequest2.fromJson(Map<String, dynamic> json) { return PatchItemRequest2(
  name: json['name'] as String?,
  avatar: json.containsKey('avatar') ? Omittable(json['avatar']) : const Omittable.absent(),
); }

final String? name;

final Omittable<dynamic> avatar;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  if (avatar.isPresent) 'avatar': avatar.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'avatar'}.contains(key)); } 
PatchItemRequest2 copyWith({String? Function()? name, Omittable<dynamic>? avatar, }) { return PatchItemRequest2(
  name: name != null ? name() : this.name,
  avatar: avatar ?? this.avatar,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchItemRequest2 &&
          name == other.name &&
          avatar == other.avatar; } 
@override int get hashCode { return Object.hash(name, avatar); } 
@override String toString() { return 'PatchItemRequest2(name: $name, avatar: $avatar)'; } 
 }
