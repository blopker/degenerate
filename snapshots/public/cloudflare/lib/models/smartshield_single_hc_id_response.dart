// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_single_hc_id_response_result.dart';@immutable final class SmartshieldSingleHcIdResponse {const SmartshieldSingleHcIdResponse({this.result});

factory SmartshieldSingleHcIdResponse.fromJson(Map<String, dynamic> json) { return SmartshieldSingleHcIdResponse(
  result: json['result'] != null ? SmartshieldSingleHcIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SmartshieldSingleHcIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SmartshieldSingleHcIdResponse copyWith({SmartshieldSingleHcIdResponseResult Function()? result}) { return SmartshieldSingleHcIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSingleHcIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SmartshieldSingleHcIdResponse(result: $result)'; } 
 }
