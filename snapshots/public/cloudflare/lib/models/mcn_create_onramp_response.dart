// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_onramp.dart';final class McnCreateOnrampResponse {const McnCreateOnrampResponse({this.result});

factory McnCreateOnrampResponse.fromJson(Map<String, dynamic> json) { return McnCreateOnrampResponse(
  result: json['result'] != null ? McnOnramp.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnOnramp? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnCreateOnrampResponse copyWith({McnOnramp Function()? result}) { return McnCreateOnrampResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnCreateOnrampResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnCreateOnrampResponse(result: $result)'; } 
 }
