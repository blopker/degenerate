// GENERATED CODE - DO NOT MODIFY BY HAND

import 'web3_content_list_entry.dart';final class Web3ContentListEntrySingleResponse {const Web3ContentListEntrySingleResponse({this.result});

factory Web3ContentListEntrySingleResponse.fromJson(Map<String, dynamic> json) { return Web3ContentListEntrySingleResponse(
  result: json['result'] != null ? Web3ContentListEntry.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final Web3ContentListEntry? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
Web3ContentListEntrySingleResponse copyWith({Web3ContentListEntry Function()? result}) { return Web3ContentListEntrySingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ContentListEntrySingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'Web3ContentListEntrySingleResponse(result: $result)'; } 
 }
