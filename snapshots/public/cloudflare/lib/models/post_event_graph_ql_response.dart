// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostEventGraphQlResponse {const PostEventGraphQlResponse({this.data, this.errors, });

factory PostEventGraphQlResponse.fromJson(Map<String, dynamic> json) { return PostEventGraphQlResponse(
  data: (json['data'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

final Map<String,dynamic>? data;

final List<Map<String,dynamic>>? errors;

Map<String, dynamic> toJson() { return {
  'data': ?data,
  if (errors != null) 'errors': errors?.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'errors'}.contains(key)); } 
PostEventGraphQlResponse copyWith({Map<String, dynamic>? Function()? data, List<Map<String, dynamic>>? Function()? errors, }) { return PostEventGraphQlResponse(
  data: data != null ? data() : this.data,
  errors: errors != null ? errors() : this.errors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventGraphQlResponse &&
          data == other.data &&
          listEquals(errors, other.errors); } 
@override int get hashCode { return Object.hash(data, Object.hashAll(errors ?? const [])); } 
@override String toString() { return 'PostEventGraphQlResponse(data: $data, errors: $errors)'; } 
 }
