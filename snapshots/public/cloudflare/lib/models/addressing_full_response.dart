// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_full_response_result.dart';@immutable final class AddressingFullResponse {const AddressingFullResponse({this.result});

factory AddressingFullResponse.fromJson(Map<String, dynamic> json) { return AddressingFullResponse(
  result: json['result'] != null ? AddressingFullResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AddressingFullResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AddressingFullResponse copyWith({AddressingFullResponseResult Function()? result}) { return AddressingFullResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingFullResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AddressingFullResponse(result: $result)'; } 
 }
