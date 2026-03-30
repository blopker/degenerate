// GENERATED CODE - DO NOT MODIFY BY HAND

import 'addressing_id_response_result.dart';final class AddressingIdResponse {const AddressingIdResponse({this.result});

factory AddressingIdResponse.fromJson(Map<String, dynamic> json) { return AddressingIdResponse(
  result: json['result'] != null ? AddressingIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AddressingIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AddressingIdResponse copyWith({AddressingIdResponseResult Function()? result}) { return AddressingIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AddressingIdResponse(result: $result)'; } 
 }
