// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_ipam_delegations.dart';@immutable final class AddressingSchemasSingleResponse {const AddressingSchemasSingleResponse({this.result});

factory AddressingSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AddressingSchemasSingleResponse(
  result: json['result'] != null ? AddressingIpamDelegations.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AddressingIpamDelegations? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AddressingSchemasSingleResponse copyWith({AddressingIpamDelegations Function()? result}) { return AddressingSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AddressingSchemasSingleResponse(result: $result)'; } 
 }
