// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_onramp.dart';final class McnGetOnrampResponse {const McnGetOnrampResponse({this.result});

factory McnGetOnrampResponse.fromJson(Map<String, dynamic> json) { return McnGetOnrampResponse(
  result: json['result'] != null ? McnOnramp.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnOnramp? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnGetOnrampResponse copyWith({McnOnramp Function()? result}) { return McnGetOnrampResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnGetOnrampResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnGetOnrampResponse(result: $result)'; } 
 }
