// GENERATED CODE - DO NOT MODIFY BY HAND

import 'web3_content_list_entry_collection_response_result.dart';final class Web3ContentListEntryCollectionResponse {const Web3ContentListEntryCollectionResponse({this.result});

factory Web3ContentListEntryCollectionResponse.fromJson(Map<String, dynamic> json) { return Web3ContentListEntryCollectionResponse(
  result: json['result'] != null ? Web3ContentListEntryCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final Web3ContentListEntryCollectionResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
Web3ContentListEntryCollectionResponse copyWith({Web3ContentListEntryCollectionResponseResult Function()? result}) { return Web3ContentListEntryCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ContentListEntryCollectionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'Web3ContentListEntryCollectionResponse(result: $result)'; } 
 }
