// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_policies.dart';@immutable final class AaaSingleResponse {const AaaSingleResponse({this.result});

factory AaaSingleResponse.fromJson(Map<String, dynamic> json) { return AaaSingleResponse(
  result: json['result'] != null ? AaaPolicies.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AaaPolicies? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AaaSingleResponse copyWith({AaaPolicies Function()? result}) { return AaaSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AaaSingleResponse(result: $result)'; } 
 }
