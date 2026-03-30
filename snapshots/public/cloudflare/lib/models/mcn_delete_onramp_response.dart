// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_deleted_onramp.dart';final class McnDeleteOnrampResponse {const McnDeleteOnrampResponse({this.result});

factory McnDeleteOnrampResponse.fromJson(Map<String, dynamic> json) { return McnDeleteOnrampResponse(
  result: json['result'] != null ? McnDeletedOnramp.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnDeletedOnramp? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnDeleteOnrampResponse copyWith({McnDeletedOnramp Function()? result}) { return McnDeleteOnrampResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnDeleteOnrampResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnDeleteOnrampResponse(result: $result)'; } 
 }
