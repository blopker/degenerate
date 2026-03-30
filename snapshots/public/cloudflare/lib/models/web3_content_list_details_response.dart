// GENERATED CODE - DO NOT MODIFY BY HAND

import 'web3_content_list_details.dart';final class Web3ContentListDetailsResponse {const Web3ContentListDetailsResponse({this.result});

factory Web3ContentListDetailsResponse.fromJson(Map<String, dynamic> json) { return Web3ContentListDetailsResponse(
  result: json['result'] != null ? Web3ContentListDetails.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final Web3ContentListDetails? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
Web3ContentListDetailsResponse copyWith({Web3ContentListDetails Function()? result}) { return Web3ContentListDetailsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ContentListDetailsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'Web3ContentListDetailsResponse(result: $result)'; } 
 }
