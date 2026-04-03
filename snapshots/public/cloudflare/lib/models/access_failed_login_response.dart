// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_failed_login_response_result.dart';@immutable final class AccessFailedLoginResponse {const AccessFailedLoginResponse({this.result});

factory AccessFailedLoginResponse.fromJson(Map<String, dynamic> json) { return AccessFailedLoginResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessFailedLoginResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessFailedLoginResponseResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessFailedLoginResponse copyWith({List<AccessFailedLoginResponseResult> Function()? result}) { return AccessFailedLoginResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessFailedLoginResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessFailedLoginResponse(result: $result)'; } 
 }
