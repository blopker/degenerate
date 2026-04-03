// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_ipam_prefixes.dart';@immutable final class AddressingSingleResponse {const AddressingSingleResponse({this.result});

factory AddressingSingleResponse.fromJson(Map<String, dynamic> json) { return AddressingSingleResponse(
  result: json['result'] != null ? AddressingIpamPrefixes.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AddressingIpamPrefixes? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AddressingSingleResponse copyWith({AddressingIpamPrefixes Function()? result}) { return AddressingSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AddressingSingleResponse(result: $result)'; } 
 }
