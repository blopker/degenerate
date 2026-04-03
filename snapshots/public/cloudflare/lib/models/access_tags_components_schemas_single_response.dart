// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_tag.dart';@immutable final class AccessTagsComponentsSchemasSingleResponse {const AccessTagsComponentsSchemasSingleResponse({this.result});

factory AccessTagsComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessTagsComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessTag.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessTag? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessTagsComponentsSchemasSingleResponse copyWith({AccessTag Function()? result}) { return AccessTagsComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessTagsComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessTagsComponentsSchemasSingleResponse(result: $result)'; } 
 }
