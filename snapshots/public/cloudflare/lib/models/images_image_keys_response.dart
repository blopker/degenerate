// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'images_image_keys.dart';@immutable final class ImagesImageKeysResponse {const ImagesImageKeysResponse({this.keys});

factory ImagesImageKeysResponse.fromJson(Map<String, dynamic> json) { return ImagesImageKeysResponse(
  keys: (json['keys'] as List<dynamic>?)?.map((e) => ImagesImageKeys.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ImagesImageKeys>? keys;

Map<String, dynamic> toJson() { return {
  if (keys != null) 'keys': keys?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'keys'}.contains(key)); } 
ImagesImageKeysResponse copyWith({List<ImagesImageKeys> Function()? keys}) { return ImagesImageKeysResponse(
  keys: keys != null ? keys() : this.keys,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImageKeysResponse &&
          listEquals(keys, other.keys); } 
@override int get hashCode { return Object.hashAll(keys ?? const []).hashCode; } 
@override String toString() { return 'ImagesImageKeysResponse(keys: $keys)'; } 
 }
