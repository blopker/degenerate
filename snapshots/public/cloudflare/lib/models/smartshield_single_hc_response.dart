// GENERATED CODE - DO NOT MODIFY BY HAND

import 'smartshield_healthchecks.dart';final class SmartshieldSingleHcResponse {const SmartshieldSingleHcResponse({this.result});

factory SmartshieldSingleHcResponse.fromJson(Map<String, dynamic> json) { return SmartshieldSingleHcResponse(
  result: json['result'] != null ? SmartshieldHealthchecks.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SmartshieldHealthchecks? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SmartshieldSingleHcResponse copyWith({SmartshieldHealthchecks Function()? result}) { return SmartshieldSingleHcResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSingleHcResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SmartshieldSingleHcResponse(result: $result)'; } 
 }
