// GENERATED CODE - DO NOT MODIFY BY HAND

import 'addressing_loa_upload_response_result.dart';final class AddressingLoaUploadResponse {const AddressingLoaUploadResponse({this.result});

factory AddressingLoaUploadResponse.fromJson(Map<String, dynamic> json) { return AddressingLoaUploadResponse(
  result: json['result'] != null ? AddressingLoaUploadResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AddressingLoaUploadResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AddressingLoaUploadResponse copyWith({AddressingLoaUploadResponseResult Function()? result}) { return AddressingLoaUploadResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingLoaUploadResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AddressingLoaUploadResponse(result: $result)'; } 
 }
