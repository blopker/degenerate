// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventGraphQlResponse {const PostEventGraphQlResponse({this.data = const Omittable.absent(), this.errors = const Omittable.absent(), });

factory PostEventGraphQlResponse.fromJson(Map<String, dynamic> json) { return PostEventGraphQlResponse(
  data: json.containsKey('data') ? Omittable(json['data'] as Map<String, dynamic>?) : const Omittable.absent(),
  errors: json.containsKey('errors') ? Omittable((json['errors'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList()) : const Omittable.absent(),
); }

final Omittable<Map<String,dynamic>?> data;

final Omittable<List<Map<String,dynamic>>?> errors;

Map<String, dynamic> toJson() { return {
  if (data.isPresent) 'data': data.value,
  if (errors.isPresent) 'errors': errors.value?.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'errors'}.contains(key)); } 
PostEventGraphQlResponse copyWith({Omittable<Map<String,dynamic>?>? data, Omittable<List<Map<String,dynamic>>?>? errors, }) { return PostEventGraphQlResponse(
  data: data ?? this.data,
  errors: errors ?? this.errors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventGraphQlResponse &&
          data == other.data &&
          errors.isPresent == other.errors.isPresent &&
          listEquals(errors.value, other.errors.value); } 
@override int get hashCode { return Object.hash(data, Object.hashAll(errors.value ?? const [])); } 
@override String toString() { return 'PostEventGraphQlResponse(data: $data, errors: $errors)'; } 
 }
