// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_create_response_result.dart';@immutable final class AccessCreateResponse {const AccessCreateResponse({this.result});

factory AccessCreateResponse.fromJson(Map<String, dynamic> json) { return AccessCreateResponse(
  result: json['result'] != null ? AccessCreateResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessCreateResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCreateResponse copyWith({AccessCreateResponseResult Function()? result}) { return AccessCreateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCreateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessCreateResponse(result: $result)'; } 
 }
