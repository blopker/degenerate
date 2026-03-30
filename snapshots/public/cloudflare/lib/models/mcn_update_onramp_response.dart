// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_onramp.dart';final class McnUpdateOnrampResponse {const McnUpdateOnrampResponse({this.result});

factory McnUpdateOnrampResponse.fromJson(Map<String, dynamic> json) { return McnUpdateOnrampResponse(
  result: json['result'] != null ? McnOnramp.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnOnramp? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnUpdateOnrampResponse copyWith({McnOnramp Function()? result}) { return McnUpdateOnrampResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnUpdateOnrampResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnUpdateOnrampResponse(result: $result)'; } 
 }
