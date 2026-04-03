// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessDeleteUserResponse {const AccessDeleteUserResponse({this.result});

factory AccessDeleteUserResponse.fromJson(Map<String, dynamic> json) { return AccessDeleteUserResponse(
  result: json['result'] as Map<String, dynamic>?,
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessDeleteUserResponse copyWith({Map<String, dynamic>? Function()? result}) { return AccessDeleteUserResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessDeleteUserResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessDeleteUserResponse(result: $result)'; } 
 }
